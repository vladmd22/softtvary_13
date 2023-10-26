#!/usr/bin/env bash

COLOR=0
COW=./cowsay/share/cows/default.cow

credit(){
    if [[ -z $@ ]]; then 
        echo "ERROR: no arguments"
    else

    M=$1
    N=$2
    i=$3
    m=$4

    ./bin/credit $M $N $i $m  
    fi
}

cowsay(){
    cow=$1
    phrase=$2
    clear && ./cowsay/cowsay -f $cow $phrase
}

cowthink(){
    cow=$1
    phrase=$2
    clear && ./cowsay/cowthink -f $cow $phrase
}


COWSAY() {
    if [[ -z $@ ]]; then 
        echo "ERROR: no arguments"
    else
        if [ $3 == 2 ]; then 
            cowsay "${COW}" "${phrase}" | ./lolcat/lolcat; 
        else 
            cowsay "${COW}" "${phrase}";
        fi
    fi

}    

greetings(){
    phrase="What is your name?"
    cowsay "${COW}" "${phrase}" && read name
    if [[ $name == "" ]]; then
        name="Mr. Nobody"
        cowsay "${COW}" "Hello, ${name}" && sleep 2
    elif [[ $name == *[0-9]* ]]; then 
        name="Цифорка"
        cowsay "${COW}" "Hello, ${name}" && sleep 2
    else
        cowsay "${COW}" "Hello, ${name}" && sleep 2 
    fi
}

change_cow(){
    cowsay "${COW}" "Do you like me? [Y|N]" && read input
    if [[ $input == "Y" || $input == "y" ]]; then
        phrase="Oooo TNX you are so adorable?"
        COWSAY "${COW}" "${phrase}" "${COLOR}" && sleep 2
    else
        COW=./resources/cow.cow
        phrase="Do you like me now?"
        COWSAY "${COW}" "${phrase}" "${COLOR}" && sleep 2
    fi
}

color_cow(){
    cowsay "${COW}" 'Do you want to color me? [Y|N]' && read input
    if [[ $input == "Y" || $input == "y" ]]; then
            COLOR=2
            phrase="I am beautiful?"
            COWSAY "${COW}" "${phrase}" $COLOR && sleep 2
    else
            phrase="'I am sad(('"
            COWSAY "${COW}" "${phrase}" $COLOR && sleep 2
    fi
}

main_loop(){

    # M="credit count"
    # N="number of payments"
    # i="% in fractions of a unit"
    # m="number of paid payments"

    phrase="${name}, please enter a credit count"
    COWSAY "${COW}" "${phrase}" $COLOR && read M
    phrase="${name}, please enter a number of payments"
    COWSAY "${COW}" "${phrase}" $COLOR && read N
    phrase="${name}, please enter a % in fractions of a unit"
    COWSAY "${COW}" "${phrase}" $COLOR && read i
    phrase="${name}, please enter a number of paid payments"
    COWSAY "${COW}" "${phrase}" $COLOR && read m
    
    result=$(credit "${M}" "${N}" "${i}" "${m}")
    if [[ $result == *"credit {M} {N} {i} {m}"* ]]; then
        phrase="U missed everything(("
        COWSAY "${COW}" "${phrase}" $COLOR && sleep 5
    else
        phrase="That's YR result: ${result} ))))"
        COWSAY "${COW}" "${phrase}" $COLOR && sleep 5
    fi

    phrase="Would u like to continue? [Y|N]"
    COWSAY "${COW}" "${phrase}" $COLOR && read input

    if [[ $input == "Y" || $input == "y" ]]; then
        phrase="${name}, please enter a credit count"
        COWSAY "${COW}" "${phrase}" $COLOR && read M
        phrase="${name}, please enter a number of payments"
        COWSAY "${COW}" "${phrase}" $COLOR && read N
        phrase="${name}, please enter a % in fractions of a unit"
        COWSAY "${COW}" "${phrase}" $COLOR && read i
        phrase="${name}, please enter a number of paid payments"
        COWSAY "${COW}" "${phrase}" $COLOR && read m
        result=$(credit "${M}" "${N}" "${i}" "${m}")
        if [[ $result == *"credit {M} {N} {i} {m}"* ]]; then
            phrase="U missed everything (( "
            COWSAY "${COW}" "${phrase}" $COLOR && sleep 5
        else
            phrase="That's YR result: ${result} ))))"
            COWSAY "${COW}" "${phrase}" $COLOR && sleep 5
        fi
    phrase="Would u like to continue? [Y|N]"
    COWSAY "${COW}" "${phrase}" $COLOR && read input
    else
        phrase="Adios, ${name}"
        COWSAY "${COW}" "${phrase}" $COLOR && sleep 1
        figlet Tnx for YR attention && sleep 2
    fi
}

main(){
    clear
	unset name input phrase
    figlet "Welcome" && sleep 2
    greetings && change_cow
    unset input phrase
    if [[ $COW == './cowsay/share/cows/default.cow' ]]; then 
        color_cow && main_loop && clear
    elif [[ $COW == './resources/cow.cow' ]]; then
        main_loop && clear
    else
        echo "ERROR: wrong cow_path"
    fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
