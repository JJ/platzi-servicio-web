#!/usr/bin/env python

import dockercloud
import sys

if len(sys.argv) > 1:
    provider = sys.argv[1]
else:
    provider = 'digitalocean'

regions = [ r.name for r in dockercloud.Region.list() if  r.provider.find( provider ) > 0 ]
print regions
    
