
#!/bin/bash

echo "=============================="

echo "Student Information"

echo "=============================="
echo "Name: Alua"
echo "Surname: Makpyr"
echo "Group: IT2-2306"
echo "Student ID: 37566"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -o) $(uname -r)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
INFO_FILE="$(dirname "$0")/../Makpyr_Alua_info.txt"
if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
