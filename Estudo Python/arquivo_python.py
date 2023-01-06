import random
import time

oldnum = 0

def GetRandom(min, max) :
    oldnum = min
    for a in range(20) :
        rand = random.randrange(min, max)
        oldnum = rand
        print( rand / 1000 )
        # time.sleep(0.25)

GetRandom(1, 2000)
