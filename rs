#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Start from 2012-08-18 02:23
'''
import sys
import os
def restart(service):
    os.system('sudo /etc/init.d/%s restart'%service)

if __name__ == "__main__":
    args = sys.argv
    if len(args) > 1:
        for i in args[1:]:
            restart(i)
