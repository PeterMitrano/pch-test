rm -f pch.hh.gch

echo -e "\n\nbuilding no headers at all"
time g++ -c test.cc

echo -e "\n\nbuilding with normal headers"
time g++ -c test.cc -include pch.hh

echo -e "\n\nbuilding with pch"
g++ pch.hh
time g++ -c test.cc -include pch.hh
