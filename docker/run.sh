#!/bin/bash

service mysql start
python3 python/mysqlloginreg.py &
npm start
