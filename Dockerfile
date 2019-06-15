FROM alpine:3.9
RUN apk -v --update --no-cache add \
        python3 \
        && \
    pip3 install --upgrade pip && \
    pip3 install awscli --upgrade
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]
