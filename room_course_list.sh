#!/usr/bin/bash
room_no="$1"
grep "$room_no" timetable.csv | cut -f3 -d "," | sort -u