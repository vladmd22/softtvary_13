#!/usr/bin/env ./test/libs/bats/bin/bats
load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "credit function working" {
    source ./run.sh
    output=$(credit 1 2 3 4)
    ((output == 3))
}

@test "credit function with no arguments" {
    source ./run.sh
    output=$(credit )
    ((output == "no_arguments"))
}

@test "COWSAY function working" {
    source ./run.sh
    output=$(COWSAY )
    ((output == "no_arguments"))
}

@test "COWSAY function with no arguments" {
    source ./run.sh
    output=$(COWSAY )
    ((output == "no_arguments"))
}


