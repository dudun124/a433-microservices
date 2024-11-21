# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory
WORKDIR /app

# Menyalin semua source code ke working directory
COPY . .

# Menentukan environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 untuk container
EXPOSE 8080

# Menentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]