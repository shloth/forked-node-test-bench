FROM node:14

RUN apt-get update && apt-get install -y git     

RUN git clone https://github.com/Contrast-Security-OSS/NodeTestBenches

WORKDIR ./NodeTestBenches/express

EXPOSE 3000

RUN npm install

CMD ["node", "index.js"]

