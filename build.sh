bash prereqs.sh

rm ./cowsay/Makefile && mv Makefile_cowsay ./cowsay/Makefile 

make -f Makefile

ln -s ./lolcat/lolcat ./bin/lolcat
ln -s ./lolcat/censor ./bin/censor