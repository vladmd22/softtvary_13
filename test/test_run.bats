#!/usr/bin/env ./test/libs/bats/bin/bats
load 'libs/bats-support/load'
load 'libs/bats-assert/load'


@test "credit function with no arguments" {
    run ./run.sh credit

    assert_output 
}
# @test "credit function with no arguments" {
#   run ./run.sh credit
#   [ "$status" -eq 0 ]
#   [ "$output" = "ERROR: no arguments" ]
# }

# @test "cowsay function with no arguments" {
#   run ./run.sh cowsay
#   [ "$status" -eq 0 ]
#   [ "$output" = "ERROR: no arguments" ]
# }

