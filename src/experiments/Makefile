.PHONY: inv com clean com_example volk deinterleave_bench mkl cgemv fused jit matvec
matvec:
	g++ -m64 -I/usr/local/include/Zydis -I${MKLROOT}/include -o matvec matvec_int16.cpp -std=c++17 -Wl,--no-as-needed -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_lp64.a ${MKLROOT}/lib/intel64/libmkl_sequential.a ${MKLROOT}/lib/intel64/libmkl_core.a -Wl,--end-group,--no-as-needed -lpthread -lm -ldl /usr/local/lib/libZydis.a -O3 -funroll-loops -march=native
jit:
	g++ -g -m64 -I/usr/local/include/Zydis -I${MKLROOT}/include -o jit jit_cgemm.cpp -std=c++17 -march=native -Wl,--no-as-needed -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_lp64.a ${MKLROOT}/lib/intel64/libmkl_sequential.a ${MKLROOT}/lib/intel64/libmkl_core.a -Wl,--end-group,--no-as-needed -lpthread -lm -ldl /usr/local/lib/libZydis.a
fused:
	g++ -o fused fused_bench.cpp -std=c++17 -march=native -O0
cgemv:
	g++ -m64 -I${MKLROOT}/include -o cgemv cgemv.cpp -std=c++17 -march=native -Wl,--no-as-needed -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_lp64.a ${MKLROOT}/lib/intel64/libmkl_sequential.a ${MKLROOT}/lib/intel64/libmkl_core.a -Wl,--end-group,--no-as-needed -lpthread -lm -ldl
mkl: #https://software.intel.com/content/www/us/en/develop/articles/intel-mkl-link-line-advisor.html
	g++ -g -m64 -I${MKLROOT}/include -o mkl_bench cgemm_cgemv_bench.cpp -std=c++17 -march=native -Wl,--no-as-needed -larmadillo  -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_lp64.a ${MKLROOT}/lib/intel64/libmkl_sequential.a ${MKLROOT}/lib/intel64/libmkl_core.a -Wl,--end-group -lpthread -lm -ldl
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