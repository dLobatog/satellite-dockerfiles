Run with

```
$ docker run  -t -i --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 YOUR_IMAGE_TAG
```

If you wish to introspect a running container you can use `nsenter`

```
$ nsenter -m -u -n -i -p -t $(docker inspect --format='{{.State.Pid}}' YOUR_CONTAINER) /bin/bash
```
