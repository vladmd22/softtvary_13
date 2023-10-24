git clone https://github.com/cowsay-org/cowsay.git
rm ./cowsay/Makefile
mv Makefile_cowsay ./cowsay

make -f Makefile

bash prereqs.sh
