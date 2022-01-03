# Initialize
FROM node:lts-alpine
WORKDIR /app

# Set Node environment variables
ENV APP_PORT 3000 
ENV REACT_APP_API_BASEURL "http://localhost:8080/api"
ENV REACT_APP_TOKEN_NAME "jwtToken"

# Expose the app port
EXPOSE $APP_PORT

# Copy and install package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent

# Copy source code
COPY . ./

# Start the app
CMD ["npm", "start"]