# Start swarm
docker swarm init


# Create secret
echo "mydbpassword" | docker secret create db_password -
docker secret ls
docker secret inspect db_password


### FOR SERVICE ###
# Create service
docker service create --name my_fastapi_service --replicas 3 -p 8000:8000 docker_week_2
# Update service with secret
docker service update --secret-add db_password my_fastapi_service
# Combined
docker service create --name my_fastapi_service --secret db_password --replicas 3 -p 8000:8000 docker_week_2


### Stack, define in docker compose file
docker stack deploy --compose-file docker-compose.yml myapp

docker stack ls
docker service ls
docker stack ps myapp
docker service scale myapp_web=3
docker stack rm myapp