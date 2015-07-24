#!/usr/bin/env bats

@test "docker bin exists and is in the PATH" {
  command -v docker
}

@test "vagrant user can use docker" {
  run sudo su vagrant bash -c 'docker ps'
  [ "$output" = "CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES" ]
}
