#!/usr/bin/env bash

COLOR=0

count(){
    num1=$1
    num2=$2
    num3=$3
    num4=$4
    ./bin/count $num1 $num2 $num3 $num4
}

cowsay(){
    cow=$1
    phrase=$2
    clear && ./cowsay/cowsay -f $cow $phrase
}

cowsay(){
    cow=$1
    phrase=$2
    clear && ./cowsay/cowsay -f $cow $phrase
}

cowsay_() {

    if [[ -z $1 && -z $2 ]]; then 
        echo "ERROR: no arguments"
    else
        if [ $2 == 2 ]; then 
        cowsay "${phrase}" | ./bin/lolcat; 
        else 
        cowsay "${phrase}";
        fi
    fi
 
}    


test(){
    if ! command -v cowsay 'HI'  &> /dev/null
    then
    echo 'The path to cowsay is not working. Please, add it.'
    exit
    fi

    if ! command -v cowsay_ 'HI'  &> /dev/null
    then
    echo 'The cowsay_ is not working. Please, check it.'
    exit
    fi

    if ! command -v cowsay_ 'HI' 2 &> /dev/null
    then
    echo 'The colored cowsay is not working. Please, check it.'
    exit
    fi

    var=$(count 1 2 3 4)
    if [ $var -ne -2 ]  
    then
    echo 'The path to count credit is not working. Please, add it.'
    exit
    fi
}

greetings(){
    cowsay "What is your name?" && read name 
    cowsay "Hello, ${name}" 
}

color_me(){
    cowsay 'Do you want to color me? [Y|y]' && read input
    if [[ $input == "Y" || $input == "y" ]]; then
            COLOR=2
            phrase="Am I beautiful?"
            cowsay_ "${phrase}" $COLOR
    else
            phrase="'I am sad(('"
            cowsay_ "${phrase}" $COLOR
    fi
}

main_loop(){

    cowsay_all(){
        cowsay_ "${phrase}" $COLOR
    }

    for num in {1..4}; do
        phrase="${name}, please enter a number $num"
        cowsay_all && read num${num}
    done
    phrase="That's yr result: $(count $num1 $num2 $num3 $num4)"
    cowsay_all && sleep 5
    phrase="Would u like to continue? [Y|N]"
    cowsay_all && read input

    if [[ $input == "Y" || $input == "y" ]]; then
        for num in {1..4}; do
            phrase="${name}, please enter a number $num"
            cowsay_ all && read num${num}
        done
        phrase="That's yr result: $(count $num1 $num2 $num3 $num4)"
        cowsay_all && sleep 5
        phrase="Would u like to continue? [Y|N]"
        cowsay_all && read input
    else
        phrase="Adios, ${name}"
        cowsay_all && sleep 5
    fi
}


main(){
    clear
	unset name input
    test
    greetings
    color_me
    main_loop
    clear
}

main