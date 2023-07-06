# Import the Docker Python module
import docker

# Create a Docker client object
client = docker.from_env()

# List all running containers
containers = client.containers.list()
for container in containers:
    print(f"{container.short_id} {container.client} {container.name}")
    # print(container.attrs)

# Create a new container
container = client.containers.create('nginx:latest')

# Start the container
container.start()

# Stop the container
container.stop()

# Remove the container
container.remove()
