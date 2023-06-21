# Bind Mount
docker run -d -p 8080:80 -v /Users/kalkulus/Documents/Work/ktechhub/ktech-dev/bootcamp/docker-bc-2023/docker_week2/volumes/html:/usr/share/nginx/html nginx
docker run -d -p 8000:80 -v $(pwd)/html:/usr/share/nginx/html nginx