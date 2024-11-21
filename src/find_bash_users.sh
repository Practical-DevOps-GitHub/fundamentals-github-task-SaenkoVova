#!/bin/bash

# Check if the /etc/passwd file exists
if [[ ! -f /etc/passwd ]]; then
  echo "The /etc/passwd file does not exist on this system."
  exit 1
fi

# Extract users with /bin/bash as their shell
echo "Users with /bin/bash as their shell:"
grep "/bin/bash" /etc/passwd | awk -F: '{print $1}'
