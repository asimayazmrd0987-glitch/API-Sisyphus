# STAGE 1

FROM node:18-alpine AS builder
WORKDIR /app
COPY . .

RUN echo "Build stage complete."

# STAGE 2
FROM nginx:1.25-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /app/index.html /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
