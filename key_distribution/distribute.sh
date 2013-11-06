# this script need three files in the same directory:
#	slave: the ip list of slave servers
#	passwd:	the password of user to login

cat slave | xargs -I {} sshpass -f passwd ssh-copy-id {}
