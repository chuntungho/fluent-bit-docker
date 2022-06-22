# fluent-bit-docker
Fluent-bit image that extracts docker container logs

## Test

> DON'T use stdout OUTPUT, otherwise it will cause an infinite loop.

```sh
docker run --rm \
-v $(pwd)/log:/fluent-bit/log \
-v /var/lib/docker/containers:/var/lib/docker/containers \
chuntungho/fluent-bit-docker -c /fluent-bit/etc/fluent-bit.conf \
-o file -p path=/fluent-bit/log
```
