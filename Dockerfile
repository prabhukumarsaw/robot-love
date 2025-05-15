FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5173
# Development
CMD ["npm", "run", "dev"]

# For production you would use:
# RUN npm run build
# CMD ["npm", "run", "preview"]FROM node:18-alpine
