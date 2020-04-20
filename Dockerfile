FROM node:12

# Create application directory
WORKDIR /usr/src/app

# Install all dependencies
COPY package.json ./
RUN npm install --only=prod

# Copy app source
COPY . .

# Running app
CMD ["npm", "test"]
CMD ["npm", "start"]