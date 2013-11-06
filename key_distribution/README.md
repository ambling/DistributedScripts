WHAT'S THIS
This is a simple framework to distribute ssh public keys from master to slaves in a cluster of nodes. It assumes that the same account of all slaves share the same password, if it is not your situation, you may need an account-password correspondence file and some modification of the code.
For security considerations, I use the password in file instead of in command lines, remember to clear the file after the task is finished.

DEPENDENCY
sshpass(http://sourceforge.net/projects/sshpass/)
ssh-copy-id

HOW TO USE
1. Edit the slave file to set the slave hosts' ip, one line per host.
2. Write the password of the account into the file passwd.
3. Run distribute.sh.
4. Clear the content of passwd file.

LICENSE
No licenses at all, use it as you like.

CONTACT
Ambling<ambling07@gmail.com>

If it helps, you can give me a star on github(https://github.com/ambling/DistributedScripts). ^ ^
