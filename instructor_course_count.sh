#!/usr/bin/bash
i_name="$1"
grep "$i_name" timetable.csv | cut -f3 -d"," | sort -u | wc -l
