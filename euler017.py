import math


def toEnglish(num):
    if num == 1000:
        return 'one thousand'
    hundreds = ''
    if num >= 100:
        hundreds = _toEnglish(math.floor(num / 100)) + '-hundred'
        if num % 100 > 0:
            hundreds += ' and '
    subcentury = _toEnglish(num % 100)
    return hundreds + subcentury


def _toEnglish(num):
    _toEnglish.oneth = ['', 'one', 'two', 'three', 'four', 'five', 'six',
                        'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
                        'thirteen', 'fourteen', 'fifteen', 'sixteen',
                        'seventeen', 'eighteen', 'nineteen']
    _toEnglish.tenth = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty',
                        'seventy', 'eighty', 'ninety']

    if num >= 100:
        raise ValueError('_toEnglish called on number too high: ' + str(num))
    if num < 0:
        raise ValueError('_toEnglish called on number too low: ' + str(num))
    if num < 20:
        return _toEnglish.oneth[int(num)]
    tens = _toEnglish.tenth[int(num / 10)]
    if num % 10 > 0:
        tens += '-'
    ones = _toEnglish.oneth[int(num % 10)]
    return tens + ones


def letterCount(numStr):
    return len(filter(lambda char: char != '-' and char != ' ', numStr))

r = range(1, 1000 + 1)
for i in r:
    print(toEnglish(i))
    print(letterCount(toEnglish(i)))
print(reduce(lambda total, curr: total + curr,
             map(lambda curr: letterCount(toEnglish(curr)), r)))
