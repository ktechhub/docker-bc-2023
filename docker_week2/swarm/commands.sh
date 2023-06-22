docker swarm init

###
# Swarm initialized: current node (n09eri4g6jdarzs9q5lslq340) is now a manager.

# To add a worker to this swarm, run the following command:

#    docker swarm join --token SWMTKN-1-21sj0v110yp707n29xsenzo1khtof0mu0wgfxw8f0ep4nwuj6m-2lysxc7tpq8lt01jnc8jea6rw 192.168.65.3:2377

# To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.
###

### Join Worker
docker swarm join-token worker
# To add a worker to this swarm, run the following command:
  #   docker swarm join --token <token> <manager-ip>:<manager-port>

# Promote a node
docker node promote <node-id>



### Services
# Create a service
docker service create --name my-service --replicas 3 -p 8000:80 nginx
docker service ls
docker ps

# Scale service
docker service scale my-service=5
docker service scale my-service=2


# Update Service
docker service update --image new-image my-service

# Remove Service
docker service rm my-service
