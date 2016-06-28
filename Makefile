SRC= parseDependencyGraph.c cJSON.c
HDRS=cJSON.h
CPLR=gcc

all:pReplay

pReplay: $(SRC) Makefile
	$(CPLR) $(SRC) -lm -lpthread -lcurl -o $@
debug: $(SRC) Makefile
	$(CPLR) -g $(SRC) -lm -lpthread -lcurl -o $@
	

clean:
	rm -rf dParser 	 
