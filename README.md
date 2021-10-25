The goal of this project was to create a Docker image that uses Tomcat server installed on CentOS.

**Building:**

```
docker build -t local/docker-centos-tomcat:1.0 .
```

**Running:**

```
docker run -d --name c7 -v /tmp/$(mktemp -d):/run -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8080:8080 local/docker-centos-tomcat:1.0
```

The current version is not working as `tomcat` user cannot call `systemctl` because they don't have enough permissions and running container in priviledged mode defies the logic of creating `tomcat` user in the first place and makes container less secure.