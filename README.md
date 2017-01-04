# example-flask-app

### To create SSH tunnel for Swarm
```
ssh -L 2375:localhost:2375 -f -N [server].cloudapp.azure.com -p 2200
export DOCKER_HOST=:2375
```

### To start and scale on Swarm Cluster:
Make sure you're in the same folder as the docker-compose.yml file.
```
docker-compose up -d
docker-compose scale example-flask-app=2
```
