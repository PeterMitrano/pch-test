rm -f pch.hh.gch

echo -e "\n\nbuilding with half the headers in the pch headers"
time g++ -c test.cc -include half_pch.hh

echo -e "\n\nbuilding with one of the headers in the pch headers"
time g++ -c test.cc -include boost/filesystem/path.hpp

echo -e "\n\nbuilding with two of the headers in the pch headers"
time g++ -c test.cc -include boost/filesystem/path.hpp -include boost/iostreams/filter/gzip.hpp

echo -e "\n\nbuilding with pch"
g++ pch.hh
time g++ -c test.cc -include pch.hh
