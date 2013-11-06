#! /usr/bin/env bash

# the destination that need to execute the command
destination="@slave"

# copy the tools folder
clush -v -w $destination --copy tools --dest /tmp/

# run the script
clush -w $destination "cd /tmp/tools && ./run.sh"

# clean
clush -w $destination "rm -rf /tmp/tools"
