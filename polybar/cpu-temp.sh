#!/bin/bash
sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}' | sed 's/°C//'

