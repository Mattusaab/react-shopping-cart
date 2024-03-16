FROM node:19.5.0-alpine
WORKDIR '/app'
copy package.json . .
RUN npm install


COPY . .
CMD ["npm","start"]

