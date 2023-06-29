docker stack deploy --compose-file docker-compose.yml myapp

docker stack ls
docker service ls
docker stack ps myapp
docker service scale myapp_web=3
docker stack rm myapp
