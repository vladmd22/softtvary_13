
make -f Makefile

bash prereqs.sh


make install -C ./lolcat DESTDIR=$(pwd)/bin
