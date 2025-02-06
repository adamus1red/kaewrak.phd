FROM jekyll/jekyll:4.2.2 as Builder

#WORKDIR /app
ADD . /srv/jekyll


RUN set -x && apk -U add autoconf
#RUN id && sleep 30
RUN set -x && npm install
RUN set -x && jekyll build --trace
    #bundle install

FROM nginx:1.27.4

COPY --from=Builder /srv/jekyll/_site /usr/share/nginx/html
ADD ./404 /usr/share/nginx/404
COPY ./docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

