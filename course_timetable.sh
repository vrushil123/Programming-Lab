#!/usr/bin/bash
read -p "Enter the course :" course_name
grep "$course_name" timetable.csv
