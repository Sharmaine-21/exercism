# word-count

import re

def sanitize(phrase):
    return re.sub('[^A-Za-z\s]', '', phrase)

def word_count(phrase):
    words = filter(lambda x: len(x) > 0, sanitize(phrase).split(' '))
