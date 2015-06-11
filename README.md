# mongo-tunnel
Bash script for connecting mongo console via ssh tunnel

Dead simple, use at your own risk =)

##Usage:

```
mongotunnel.sh mongo_url:port user@tunnel_host
```

Inspired by MongoHub, that has such an option

Port searching was taken from here http://www.commandlinefu.com/commands/view/7299/find-an-unused-unprivileged-tcp-port

Solution was found here: http://stackoverflow.com/questions/2241063/bash-script-to-setup-a-temporary-ssh-tunnel/15198031#15198031