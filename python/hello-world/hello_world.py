#
# Skeleton file for the Python "Hello World" exercise.
#
def hello(name = ''):
    if len(name) == 0:
        name = 'world'
    return u"Hello, {0}!".format(name)
