#!/usr/bin/env sh
# Prints the hostname
uid=$(id -u)
host=$(hostname -s)

# Show a prompt symbol and make it red if we're root
if [[ $uid -eq 0 ]]; then
    echo -n "#[fg=colour880]# "
else
    echo -n "$ "
fi
echo "${host}"

exit 0
