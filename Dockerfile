FROM node:18-alpine

# Create app directory
WORKDIR /app


COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# The app listens on 3000
EXPOSE 3000

# Start the server. We run node directly to avoid requiring a "start" script.
CMD ["npm", "run", "dev"]
