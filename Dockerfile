# Menggunakan base image Node.js versi 14 dengan Alpine Linux (versi ringan)
FROM node:14-alpine

# Menetapkan folder /app sebagai folder kerja
WORKDIR /app

# Menyalin semua file dari komputer lokal (host) ke dalam container
COPY . .

# Environment variable untuk aplikasi
# NODE_ENV diatur ke 'production' untuk menjalankan aplikasi dalam mode produksi
# DB_HOST diatur ke 'item-db' sebagai lokasi database
ENV NODE_ENV=production DB_HOST=item-db

# Perintah menginstal semua dependensi yang diperlukan aplikasi dalam mode produksi
# Setelah itu build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Perintah menjalankan aplikasi ketika container dijalankan
CMD ["npm", "start"]

# Membuka port 8080 untuk mengakses aplikasi dari luar container
EXPOSE 8080