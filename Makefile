LIBS=-lpcre -lcrypto -lm -lpthread
CFLAGS=-ggdb -O3 -Wall
OBJS=vanitygen.o oclvanitygen.o oclvanityminer.o oclengine.o keyconv.o pattern.o util.o
PROGS=vanitygen oclvanitygen
OCLZIP=oclvanitygen.zip
VANZIP=vanitygen.zip

PLATFORM=$(shell uname -s)
ifeq ($(PLATFORM),Darwin)
OPENCL_LIBS=-framework OpenCL
else
OPENCL_LIBS=-lOpenCL
endif

all: $(PROGS)

vanitygen: vanitygen.o pattern.o util.o
	$(CC) $^ -o $@ $(CFLAGS) $(LIBS)
	zip $(VANZIP) vanitygen

oclvanitygen: oclvanitygen.o oclengine.o pattern.o util.o
	$(CC) $^ -o $@ $(CFLAGS) $(LIBS) $(OPENCL_LIBS)
	zip $(OCLZIP) oclvanitygen calc_addrs.cl

clean:
	rm -f $(OCLZIP) $(VANZIP)
	rm -f $(OBJS) $(PROGS) $(TESTS)
