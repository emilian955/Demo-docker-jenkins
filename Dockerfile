FROM nginx:latest
COPY html/index.html /usr/share/nginx/html

#documentation
#EXPOSE 80/tcp

#CMD ["nginx","-g","daemon off;"]


