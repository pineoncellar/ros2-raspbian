
all: fix-fastrtps fix-assimp

PATCHES := $(PWD)

fix-fastrtps:
	cd ../../src/eProsima/Fast-DDS && \
	git apply $(PATCHES)/fastrtps-stdint.patch || true

fix-assimp:
	cd ../../build/rviz_assimp_vendor/assimp_vendor-prefix/src/assimp_vendor
	git apply $(PATCHES)/assimp-compare-array.patch || true
