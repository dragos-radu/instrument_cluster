#!/usr/bin/python3

import random
import time
import sys

rand = 10

while True:
    if rand < 10 :
         rand = random.uniform(rand, rand + 10)

    elif rand > 170:
        rand = random.uniform(rand - 10, rand)

    else:
        rand = random.uniform(rand - 10, rand + 10)

    print(f'\n{round(rand,2)}', flush=True)
    time.sleep(1)
