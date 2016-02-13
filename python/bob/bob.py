#
# Skeleton file for the Python "Bob" exercise.
#

import re

def shoutp(what):
    if re.search('[A-Z]', what) and what == what.upper():
        return True
    else:
        return False

def questionp(what):
    if re.match('.+\?\s*$', what):
        return True
    else:
        return False

def silentp(what):
    if re.sub('\s', '', what) == '':
        return True
    else:
        return False


def hey(what):
    if shoutp(what):
        resp = 'Whoa, chill out!'
    elif questionp(what):
        resp = 'Sure.'
    elif silentp(what):
        resp = 'Fine. Be that way!'
    else:
        resp = 'Whatever.'
    return resp
