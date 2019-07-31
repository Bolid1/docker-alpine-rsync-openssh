# Docker alpine container with rsync && ssh
Useful for deployment.

#### Usage examples
###### Execute command
If you want to do something on server with your private key and login,
you can use this command

```sh
docker run --rm \
    -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
    bolid1/docker-alpine-rsync-openssh \
    ssh -l bolid1 myserver.com 'cd /srv && ls -la'
```

At path `~/.ssh/id_rsa` stored your private key<br/>
Option `-l bolid1` used for setup your login<br/>
Argument `myserver.com` - address of your server<br/>
Last argument `'cd /srv && ls -la'` - command to execute on server

###### Connect to server
If you want to connect to your server with your private key and login,
you can use this command

```sh
docker run --rm \
    -it \
    -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
    bolid1/docker-alpine-rsync-openssh \
    ssh -l bolid1 myserver.com sh
```

Option `-it` required when you want to interact with server shell<br/>
At path `~/.ssh/id_rsa` stored your private key<br/>
Option `-l bolid1` used for setup your login<br/>
Argument `myserver.com` - address of your server<br/>
Last argument `sh` - command to start shell
