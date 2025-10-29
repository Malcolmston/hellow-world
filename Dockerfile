FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies. Use npm ci when possible for reproducible installs,
# fall back to npm install if no lockfile is present.
COPY package*.json ./
RUN npm ci --only=production || npm install --production

# Bundle app source
COPY . .

# The app listens on 3000
EXPOSE 3000

# Start the server. We run node directly to avoid requiring a "start" script.
CMD ["node", "index.js"]
