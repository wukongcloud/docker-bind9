#!/usr/bin/python

import os
import sys
# specify image path
path = "./"
for root,dirs,files in os.walk(path):
    for f in files:
        if f == 'build.sh':
            os.chdir(root)
            os.system('sh build.sh')