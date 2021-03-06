import keyword

from _compatibility import is_py3k
import builtin

import pydoc
try:
    from pydoc_data import topics as pydoc_topics
except ImportError:
    # Python 2.6
    try:
        import pydoc_topics
    except ImportError:
        # Python 2.5
        pydoc_topics = None

if is_py3k:
    keys = keyword.kwlist
else:
    keys = keyword.kwlist + ['None', 'False', 'True']


def get_keywords(string='', pos=(0, 0), all=False):
    if all:
        return set([Keyword(k, pos) for k in keys])
    if string in keys:
        return set([Keyword(string, pos)])
    return set()


def get_operator(string, pos):
    return Keyword(string, pos)


class Keyword(object):
    def __init__(self, name, pos):
        self.name = name
        self.parent = lambda: None
        self.start_pos = pos

    def get_parent_until(self):
        return builtin.Builtin.scope

    @property
    def names(self):
        """ For a `parsing.Name` like comparision """
        return [self.name]

    @property
    def docstr(self):
        return imitate_pydoc(self.name)

    def __repr__(self):
        return '<%s: %s>' % (type(self).__name__, self.name)


def imitate_pydoc(string):
    """
    It's not possible to get the pydoc's without starting the annoying pager
    stuff.
    """
    h = pydoc.help
    try:
        # try to access symbols
        string = h.symbols[string]
        string, _, related = string.partition(' ')
    except KeyError:
        pass

    get_target = lambda s: h.topics.get(s, h.keywords.get(s))
    while type(string) == type(''):
        string = get_target(string)

    try:
        # is a tuple now
        label, related = string
    except TypeError:
        return ''

    return pydoc_topics.topics[label] if pydoc_topics else ''
