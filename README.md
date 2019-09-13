### node + git + openssh + pm2

Build container
```
docker build -t auranode/pm2-ssh-git-1.0 --build-arg PRIVATE_SSH_KEY=<SSH_KEY> .
``` 

Add bash
```
docker exec -it <containerid> apk add bash
```

Connect to bash
```
docker exec -it <containerid> bash
```