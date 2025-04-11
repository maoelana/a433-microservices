# Membuat image dari code project
docker build -t item-app:v1 .

# Melihat list image
docker image ls

# Membuat tag image item-app dengan alamat GitHub Container Registry
docker tag item-app:v1 ghcr.io/maoelana/a433-microservices/item-app:v1

# Docker login ke GitHub Container Registry
# Sebelumnya atur dulu PASSWORD_GITHUB_REGISTRY sebagai environment variable dengan personal token
echo $PASSWORD_GITHUB_REGISTRY | docker login ghcr.io -u maoelana --password-stdin

# Push image ke GitHub Container Registry
docker push ghcr.io/maoelana/a433-microservices/item-app:v1