FROM fluent/fluent-bit

COPY config/ /fluent-bit/etc/

EXPOSE "2020"

VOLUME /fluent-bit/log

ENTRYPOINT [ "/fluent-bit/bin/fluent-bit" ]
CMD [ "-c", "/fluent-bit/etc/fluent-bit.conf" ]
