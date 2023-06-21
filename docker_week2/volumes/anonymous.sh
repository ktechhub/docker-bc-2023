# Run the NGINX container with an anonymous volume:
docker run -d -p 8000:80 -v /usr/share/nginx/html nginx
### -v /usr/share/nginx/html creates an anonymous volume and mounts it to the /usr/share/nginx/html directory inside the container. ###
# Access the NGINX web server by opening a web browse

# Check for the volume
docker volume ls
# Get a the volume name and modify conent if you want. But that defeats the purpose of volume mount.
# The name is of the format: dd59ba60eac72777c89590fa2ab08fc57bdea54387cfee8e2693111026081ff7

# Modify the contents of the anonymous volume:
docker run -it -v volume-name:/container/path busybox sh
### -v /container/path mounts an anonymous volume to the /container/path directory inside the temporary container. ###

# Inside the interactive shell, navigate to the mounted directory:
cd /container/path

# Create or modify files within the anonymous volume directory.
# Exit the shell.
# Access the NGINX web server again through the browser.
# The NGINX web server will still serve the default NGINX webpage because anonymous volumes are not shared between containers.
