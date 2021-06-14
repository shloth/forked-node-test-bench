FROM node:14

RUN apt-get update && apt-get install -y git     

RUN git clone https://github.com/shloth/forked-node-test-bench.git

WORKDIR ./forked-node-test-bench

EXPOSE 3000

RUN npm install

CMD ["node", "./index.js"]

