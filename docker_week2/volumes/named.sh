#Create a named volume using the Docker CLI:
docker volume create myvolume

# Run the NGINX container with the named volume:
docker run -d -p 8000:80 -v myvolume:/usr/share/nginx/html nginx
# Access the NGINX web server by opening a web browser and entering 

# Modify the contents of the named volume:
docker run -it -v myvolume:/container/path busybox sh

# Inside the interactive shell, navigate to the mounted directory:
cd /container/path
# Create or modify files within the named volume directory.
# Exit the shell.
# Access the NGINX web server again through the browser.
# The NGINX web server will now serve the modified content from the named volume.