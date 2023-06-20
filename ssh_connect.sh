#!/bin/bash

command -v sshpass >/dev/null 2>&1 || { echo >&2 "sshpass is required but not installed. Installing."; sudo apt-get install sshpass -y; }

bandit_server="bandit.labs.overthewire.org"
port="2220"
lvl=$1
username="bandit$lvl"
password=$2

sshpass -p "$password" ssh -p "$port" "$username"@"$bandit_server"
