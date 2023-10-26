#!./bin/bats/bin/bats

@test "credit function with no arguments" {
  run ./run.sh credit
  [ "$status" -eq 0 ]
  [ "$output" = "ERROR: no arguments" ]
}

@test "cowsay function with no arguments" {
  run ./run.sh cowsay
  [ "$status" -eq 0 ]
  [ "$output" = "ERROR: no arguments" ]
}

