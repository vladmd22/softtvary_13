#check if everything is working for run.sh

# PATHS
credit=./bin/credit
cowsay=./cowsay/cowsay
cowthink=./cowsay/cowthink
lolcat=./lolcat/lolcat

test_paths(){
    if ! command -v $cowsay 'HI'  &> /dev/null
    then
    echo 'The path to cowsay is not working.'
    exit
    fi

    if ! command -v $cowthink 'HI'  &> /dev/null
    then
    echo 'The cowthink is not working.'
    exit
    fi

    colored_cow(){
        $cowsay 'HI' | $lolcat
    }

    if ! command -v colored_cow &> /dev/null
    then
    echo 'The colored cowsay is not working.'
    exit
    fi

    var=$($credit 1 2 3 4)
    if [ $var -ne 3 ]  
    then
    echo 'The path to credit is not working.'
    exit
    fi
}
test_paths 

# run bats test
./test/test_run.bats

# run tests for credit function
./bin/tests
