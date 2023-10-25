bash prereqs.sh

rm ./cowsay/Makefile && cp Makefile_cowsay ./cowsay && mv ./cowsay/Makefile_cowsay ./cowsay/Makefie 

make -f Makefile

ln -s ./lolcat/lolcat ./bin/lolcat
ln -s ./lolcat/censor ./bin/censor