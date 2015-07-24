# jacoelho.docker

[Ansible](http://www.ansible.com/) role: install docker engine from the docker repositories

### Usage
```yaml
  roles:
    - role: jacoelho.docker
```

### Configuration

```yaml
docker_bin
docker_options
docker_environment
docker_users
```

for example:

```yaml
docker_options: "--graph /mnt/docker-data --storage-driver btrfs"
docker_environment:
  HTTP_PROXY: "http://proxy.example.com:80"
```

