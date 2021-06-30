# Quick reference

- **Maintained by**: [the Wukongcloud  Maintainers](https://github.com/wukongcloud/docker-bind9)
- **Where to get help**: [the Wukongcloud github issues](https://github.com/wukongcloud/docker-bind9/issues)

# Supported tags and respective `Dockerfile` links

- [`9.16`,`9.16-ubuntu`,`ubuntu`, `latest`](https://github.com/wukongcloud/docker-bind9/blob/v9.16/ubuntu/Dockerfile)
- [`9.16-alpine`,`alpine`](https://github.com/wukongcloud/docker-bind9/blob/v9.16/alpine/Dockerfile)
# What is Bind9 ?

Bind9 is the original, the classic full-featured DNS server, with DNS authoritative and recursive resolver roles, including the popular dig utility. This is based on the officially supported versions from isc.org.

Bind9's official documentation can be found at [https://kb.isc.org/docs/aa-00648).

# How to use this image 

You need to properly mount the following volumes:

- `/etc/bind` - for configuration, your `named.conf` lives here
- `/var/cache/bind` - this is the working directory, e.g. `options { directory "/var/cache/bind"; };`
- `/var/lib/bind` - this is usually the place where the secondary zones are placed
- `/var/log` - for logfiles

**Notice:**

```shell
mkdir -p /data/bind9/{etc/bind,var/cache/bind,var/lib/bind,var/log} 

# ubuntu
chown -R 105:root /data/bind9

# alpine
chown -R 100:root /data/bind9

# copy your init config to config dir
```

### Run with docker:

```shell
docker run --name=bind9 -d \
        --restart=always \
        --network=host \
        -v /data/bind9/etc/bind:/etc/bind \
        -v /data/bind9/var/cache/bind:/var/cache/bind \
        -v /data/bind9/var/lib/bind:/var/lib/bind \
        -v /data/bind9/var/log:/var/log \
        wukongcloud/bind9:9.16-ubuntu
```

## Documentation

- Documentation for BIND (9.16 and later versions only) is available on [ReadTheDocs](https://bind9.readthedocs.io/en/v9_16_6/).

## Issues

- To report a bug, navigate to our [project repository](https://github.com/wukongcloud/docker-bind9/issues). Please try searching for your issue first in case someone else has already logged it.

