#!/usr/bin/python3

import random
import time
import sys
import math

latitude = 44.41918
longitude = 26.10418
cnt = 0

while True:
    cnt += 1

    old_lat = latitude
    old_lon = longitude
    if cnt < 30:
        latitude = latitude + 0.0003
        #random.uniform(latitude - 0.00030, latitude + 0.00030)
        longitude = longitude + 0.0003
        #random.uniform(longitude - 0.00030, longitude + 0.00030)

    elif cnt >= 30 and cnt < 60:
        latitude -= 0.0002
        longitude += 0.0003

    else:
        longitude += 0.0003

    if latitude - old_lat < 0 and longitude - old_lon < 0:
        angle = math.atan( (longitude - old_lon) / (latitude - old_lat) ) * 180 / math.pi + 180
    
    elif latitude - old_lat < 0 and longitude - old_lon > 0:
        angle = 180 + math.atan( (longitude - old_lon) / (latitude - old_lat) ) * 180 / math.pi

    elif latitude - old_lat > 0 and longitude - old_lon< 0:
        angle = math.atan( (longitude - old_lon) / (latitude - old_lat) ) * 180 / math.pi

    else:
        angle = math.atan( (longitude - old_lon) / (latitude - old_lat) ) * 180 / math.pi


    print(f"{round(latitude,5)} {round(longitude,5)} {angle}", flush=True)

    time.sleep(1)