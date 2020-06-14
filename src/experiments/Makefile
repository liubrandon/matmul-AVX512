.PHONY: inv com clean com_example volk deinterleave_bench
deinterleave_bench:
	g++ deinterleave_bench.cpp -o deinterleave_bench -std=c++17 -I/usr/local/include/volk/build/include/volk -L/usr/local/include/volk/build/lib/ -l:libvolk.so -Wl,--no-as-needed -march=native -mavx512f -mavx512cd -mavx512bw -mavx512dq -mavx512vl -mavx512ifma -mavx512vbmi -mavx2 -O3
volk:
	g++ -std=c++17 -I/usr/local/include/volk/build/include/volk volk_test.cpp -o volk -L/usr/local/include/volk/build/lib/ -l:libvolk.so -Wl,--no-as-needed -march=native
inv:
	g++ -std=c++14 -o inv inverse.cpp -larmadillo -lmkl_rt -O3 -march=native
	#g++ -Wl,--no-as-needed -O3 -larmadillo -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl inverse.cpp -o inv
com:
	g++ -std=c++17 -Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl -march=native compact.cpp -o com 
com_example:
	g++ -std=c++17 -Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_core -lpthread -lm -ldl -march=native lu_inverse_example.cpp -o com_example 
clean:
	rm inv com