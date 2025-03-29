FROM node:lts-buster

# Clone the repository into /root/POPKID-BMX
RUN git clone https://github.com/popkidxtech/POPKID-BMX.git /root/POPKID-BMX

# Set working directory
WORKDIR /root/POPKID-BMX

# Install dependencies
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1

# Expose port
EXPOSE 9090

# Start the bot
CMD ["npm", "start"]
