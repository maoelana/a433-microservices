# Membuat image dari code project
docker build -t karsajobs:latest .

# Membuat tag image item-app dengan alamat GitHub Container Registry
docker tag karsajobs:latest ghcr.io/maoelana/a433-microservices/karsajobs:latest

# Docker login ke GitHub Container Registry
# Sebelumnya atur dulu PASSWORD_GITHUB_REGISTRY sebagai environment variable dengan personal token
echo $PASSWORD_GITHUB_REGISTRY | docker login ghcr.io -u maoelana --password-stdin

# Push image ke GitHub Container Registry
docker push ghcr.io/maoelana/a433-microservices/karsajobs:latest