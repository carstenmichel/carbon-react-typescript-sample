FROM registry.access.redhat.com/ubi8/nodejs-14:latest AS builder

ENV NODE_ENV production

COPY package*.json /opt/app-root/src/
RUN npm install

COPY . /opt/app-root/src/
RUN npm run build


FROM registry.access.redhat.com/ubi8/nginx-118:latest

COPY --from=builder /opt/app-root/src/build/ .
# Use S2I run-script to start nginx server
CMD /usr/libexec/s2i/run
