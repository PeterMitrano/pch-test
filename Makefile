all:
	rm pch.hh.gch
	@echo "building no headers at all"
	time g++ -c test.cc
	@echo "building with normal headers"
	time g++ -c test.cc -include pch.hh
	time g++ pch.hh
	@echo "building with pch"
	time g++ -c test.cc -include pch.hh
