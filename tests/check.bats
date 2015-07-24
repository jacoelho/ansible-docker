#!/usr/bin/env bats

@test "docker bin exists and is in the PATH" {
  command -v docker
}

@test "vagrant user can use docker" {
  run sudo su vagrant bash -c 'docker ps'
  [ "$output" = "CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES" ]
}
<<<<<<< HEAD

@test "check elixir version" {
  result="$(elixir -v)"
  [ "$result" = "Elixir 1.0.5" ]
}

@test "simple elixir command test" {
  result="$(elixir -e 'IO.puts 2+2')"
  [ "$result" = "4" ]
}

=======
>>>>>>> initial files
