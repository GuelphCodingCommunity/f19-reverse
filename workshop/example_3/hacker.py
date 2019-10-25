import os
from subprocess import Popen, PIPE

target = "GIMMEKEYSU"

def testFunction(toTest):
    p = Popen('./ex_3', stdin=PIPE, stdout=PIPE)
    a,b = p.communicate(os.linesep.join([toTest + '\n']))
    return a.split('\n')[1]

def genInput(curr, place, goal):
    for x in xrange(ord('!'), ord('~')+1):
        curr = curr[:place] + chr(x) + curr[place+1:]
        test = testFunction(curr)
        if test[place] == goal:
            print curr,
            print test
            return chr(x)

def getString(target):
    start = ' ' * len(target)

    for x in xrange(0, len(target)):
        new = genInput(start,x,target[x])
        if new == None:
            print "No solution found"
            return ''
        if x < len(target)-1:
            start = start[:x] + new + start[x+1:]
        else:
            return start[:x] + new


print getString(target)
