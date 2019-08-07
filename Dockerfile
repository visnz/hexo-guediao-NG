FROM node
ENV BLOG_NAME=hexo-guediao-NG
RUN git clone https://github.com/visnz/hexo-guediao-NG
WORKDIR /$BLOG_NAME/
RUN npm install -g hexo-cli \
    && npm update \
    && hexo generate 

FROM nginx:alpine
ENV BLOG_NAME=hexo-guediao-NG
WORKDIR /$BLOG_NAME/
COPY --from=0 /$BLOG_NAME/public /$BLOG_NAME
RUN echo "user root;events{}http{include /etc/nginx/mime.types;server{listen 80;location / {root /$BLOG_NAME/;}}}" > /etc/nginx/nginx.conf
EXPOSE 80
