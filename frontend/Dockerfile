# Stage 1: Build (Node)
FROM node:20-alpine AS build

WORKDIR /app

COPY package.json ./
RUN npm install

COPY src ./src
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /app/src /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
