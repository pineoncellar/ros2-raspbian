
all:
	# Update root config dir.
	install -v -m644 sources_list.py $(HOME)/.local/lib/python3.9/site-packages/rosdep2/
	# Fix sip config dir error.
	install -v -m644 sip_configure.py ../../src/ros-visualization/python_qt_binding/cmake/
	install -v -m644 sip_helper.cmake ../../src/ros-visualization/python_qt_binding/cmake/
	# Fix Eigen3 cmake config error.
	sudo mkdir -pv /usr/lib/x86_64-linux-gnu/cmake/Eigen3
	sudo install -v -m644 /usr/share/eigen3/cmake/* /usr/lib/x86_64-linux-gnu/cmake/Eigen3/
	sudo install -v -m644 Eigen3Config.cmake /usr/lib/x86_64-linux-gnu/cmake/Eigen3/
