FROM nginx:1.27-alpine

COPY . /usr/share/nginx/html

RUN rm -f /usr/share/nginx/html/Dockerfile \
          /usr/share/nginx/html/Jenkinsfile

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
