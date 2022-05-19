# fluent-bit-docker
Fluent-bit image that extracts docker container logs

## Test

> NOT TO use `stdout` OUTPUT, or will lead to dead loop

```sh
docker run --rm \
-v $(pwd)/log:/fluent-bit/log \
-v /var/lib/docker/containers:/var/lib/docker/containers \
fluent-bit-docker -c /fluent-bit/etc/fluent-bit.conf \
-o file -p path=/fluent-bit/log
```
