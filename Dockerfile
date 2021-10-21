FROM node:14

# Create app directory
WORKDIR /usr/workdir

# Install app dependencies
COPY server ./server
RUN npm install server
# If you are building your code for production
# RUN npm ci --only=production

# Copy sources
COPY website ./website

CMD [ "node", "server/server.js" ]