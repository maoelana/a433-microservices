# Menggunakan base image Node.js versi 16 dengan Alpine Linux (versi ringan)
FROM node:16.20-alpine

# Menetapkan folder /app sebagai folder kerja
WORKDIR /app

# Menyalin file package*.json,
# dari komputer lokal (host) ke dalam container
COPY package*.json ./

# Install semua dependensi yang diperlukan aplikasi
RUN npm install

# Menyalin semua file dari komputer lokal (host) ke dalam container
COPY . .

# Membuka port 3001 untuk akses aplikasi dari luar container
EXPOSE 3001

# Perintah menjalankan aplikasi
CMD [ "npm", "run", "start" ]