FROM alpine:3.7

COPY src /
RUN collectd-setup

ENTRYPOINT ["collectd-entrypoint"]
CMD ["collectd", "-f"]
