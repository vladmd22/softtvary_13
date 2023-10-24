TOP_DIR=$(PWD)
BIN_DIR=$(TOP_DIR)/bin
SUB_DIR=count cowsay lolcat

all:make_bin_dir 
	$(foreach N, $(SUB_DIR), make -C $(N);)
	ln -s ./lolcat/lolcat $(BIN_DIR)/lolcat
	ln -s ./lolcat/censor $(BIN_DIR)/censor

make_bin_dir:
	@if test ! -d $(BIN_DIR) ; \
	then \
		mkdir $(BIN_DIR) ; \
	fi

clean:
	rm -rf $(BIN_DIR)
	$(foreach N, $(SUB_DIR), make -C $(N) clean;)
	mv ./cowsay/Makefile ./Makefile_cowsay
	rm -rf ./lolcat ./cowsay