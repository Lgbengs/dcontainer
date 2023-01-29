FROM node

WORKDIR /usr/app

COPY package.json .

RUN useradd -m -d /home/node_user -s /bin/bash node_user

RUN npm install

COPY . .

EXPOSE 3000

USER node_user

CMD ["node","index.js"]