build:
	cmake -H. -Bbuild
	cmake --build build -- -j3

clean:
	rm -rf build bin