ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install dependencies
RUN apk add --no-cache build-base git libressl-dev jq

# Install the ser2sock application
RUN \
  cd /tmp && \
  git clone https://github.com/nutechsoftware/ser2sock.git && \
  cd ser2sock && \
  ./configure && \
  make && \
  cp ser2sock /usr/local/bin/ && \
  cp -R etc/ser2sock /etc/ && \
  cd .. && \
  rm -rf ser2sock

# Copy run script
COPY run.sh /
COPY ser2sock.conf /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
