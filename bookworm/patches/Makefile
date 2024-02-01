
all: fix-fastrtps fix-assimp

PATCHES := $(PWD)

fix-fastrtps:
	cd ../../src/eProsima/Fast-DDS && \
	git apply $(PATCHES)/fastrtps-stdint.patch || true

fix-assimp:
	cd ../../build/rviz_assimp_vendor/assimp_vendor-prefix/src/assimp_vendor
	git apply $(PATCHES)/assimp-compare-array.patch || true

# Update root config dir.
update-root-dir:
	# TODO(Shaohua): Migrate to python3.10
	install -v -m644 sources_list.py $(HOME)/.local/lib/python3.9/site-packages/rosdep2/

# Fix sip config dir error.
fix-sip:
	install -v -m644 sip_configure.py ../../src/ros-visualization/python_qt_binding/cmake/
	install -v -m644 sip_helper.cmake ../../src/ros-visualization/python_qt_binding/cmake/

# Fix Eigen3 cmake config error.
fix-eigen3:
	sudo mkdir -pv /usr/lib/x86_64-linux-gnu/cmake/Eigen3
	sudo install -v -m644 /usr/share/eigen3/cmake/* /usr/lib/x86_64-linux-gnu/cmake/Eigen3/
	sudo install -v -m644 Eigen3Config.cmake /usr/lib/x86_64-linux-gnu/cmake/Eigen3/


fix-draco:
	sudo install -v -m644 draco-config.cmake /usr/lib/x86_64-linux-gnu/cmake/draco/draco-config.cmake
