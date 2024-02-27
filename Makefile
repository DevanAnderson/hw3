CXX := g++
CXXFLAGS := -g -Wall --std=c++11
VALGRIND := valgrind --tool=memcheck --leak-check=yes

llrec-test: llrec.o llrec-test.o
	$(CXX) $(CXXFLAGS) -o $@ $^

llrec-test.o: llrec-test.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c llrec-test.cpp

llrec.o: llrec.h llrec.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c llrec.cpp

#-----------------------------------------------------
# ADD target(s) to build your llrec-test executable
#-----------------------------------------------------

clean:
	rm -f *.o rh llrec-test *~

.PHONY: clean