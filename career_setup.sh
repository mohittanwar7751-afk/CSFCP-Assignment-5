#!/bin/bash
# Bash Script: career_setup.sh
# Purpose: Automate creation of career folders and save basic system info

echo "===== Career Folder Setup Script ====="

# 1. Create main 'Career' folder with subfolders
echo "Creating Career folder structure..."

mkdir -p ~/Career/{Resumes,Projects,Certificates,Notes,Internships}

echo "Career folder structure created at: ~/Career"
echo "Subfolders: Resumes, Projects, Certificates, Notes, Internships"
echo

# 2. Create a notes file with current date
echo "Creating a career_notes.txt file in Notes folder..."
echo "Career planning notes - created on: $(date)" > ~/Career/Notes/career_notes.txt

# 3. Save basic system info
echo "Saving system information to system_info.txt..."
{
  echo "===== SYSTEM INFORMATION ====="
  echo "Date and Time: $(date)"
  echo "Current User: $(whoami)"
  echo "Hostname: $(hostname)"
  echo
  echo "===== UPTIME ====="
  uptime
} > ~/Career/system_info.txt

echo
echo "System information saved in: ~/Career/system_info.txt"

echo
echo "===== Script Execution Completed Successfully ====="
