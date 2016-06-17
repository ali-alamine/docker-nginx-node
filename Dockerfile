FROM nginx:1.10

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs
RUN npm install npm -g
RUN apt-get remove -y --purge curl; apt-get -y autoremove
