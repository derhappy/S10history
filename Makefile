CXX=/usr/bin/g++
ROOT_VALUE=S10history
LDFLAGS=-Wl,-rpath,/usr/lib/x86_64-linux-gnu -lrlog -L/usr/lib/x86_64-linux-gnu
CCFLAGS=-Irlog -O2 -DSTDERR_FILENO=2

all: $(ROOT_VALUE)

$(ROOT_VALUE): clean
	$(CXX) $(CCFLAGS) S10history.cpp RscpReader.cpp RscpProtocol.cpp AES.cpp SocketConnection.cpp $(LDFLAGS) -o $@

clean:
	-rm $(ROOT_VALUE) $(VECTOR)
