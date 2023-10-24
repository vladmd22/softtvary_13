TOP_DIR=$(PWD)
BIN_DIR=$(TOP_DIR)/bin
SUB_DIR=count cowsay 

all:make_bin_dir lolcat
	$(foreach N, $(SUB_DIR), make -C $(N);)

make_bin_dir:
	@if test ! -d $(BIN_DIR) ; \
	then \
		mkdir $(BIN_DIR) ; \
	fi

lolcat: 
	$(make install -C ./lolcat DESTDIR=$(pwd)/bin)

clean:
	rm -rf $(BIN_DIR)
	$(foreach N, $(SUB_DIR), make -C $(N) clean;)
	rm -rf ./lolcat