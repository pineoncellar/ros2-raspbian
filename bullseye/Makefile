
all: py-deps apt-deps colcon-deps

# Filter ros2 related environment to file.
# Run source install/setup.bash to load ROS environment configurations first.
generate-env:
	$(shell env | grep ^ROS_VERSION)
	$(shell env | grep ^PKG_CONFIG_PATH)
	$(shell env | grep ^ROS_PYTHON_VERSION)
	$(shell env | grep ^LOGNAME)
	$(shell env | grep ^AMENT_PRERFIX_PATH)
	$(shell env | grep ^CMAKE_PREFIX_PATH)
	$(shell env | grep ^COLCON_PREFIX_PATH)
	$(shell env | grep ^PYTHONPATH)
	$(shell env | grep ^LD_LIBRARY_PATH)
	$(shell env | grep ^ROS_LOCALHOST_ONLY)
	$(shell env | grep ^PATH)
	$(shell env | grep ^ROS_DISTRO)
	$(shell env | grep ^INVOCATION_ID)

py-deps:
	pip3 install --user --upgrade \
		catkin-pkg \
		colcon-common-extensions \
		flake8-blind-except \
		flake8-builtins \
		flake8-class-newline \
		flake8-comprehensions \
		flake8-deprecated \
		flake8-import-order \
		flake8-quotes \
		rosdep \
		rosdistro \
		rospkg \
		vcstool \
		pytest-repeat

apt-deps:
	sudo apt install -y \
		build-essential \
		cmake \
		flake8 \
		git \
		python3-flake8 \
		python3-flake8-docstrings \
		python3-flake8-polyfill \
		python3-pip \
		python3-pytest \
		python3-pytest-cov \
		python3-pytest-flake8 \
		python3-pytest-rerunfailures \
		python3-setuptools \
		wget

colcon-deps:
	sudo apt install -y \
		bison \
		curl \
		libacl1-dev \
		libasio-dev \
		libbullet-dev \
		libeigen3-dev \
		libfreetype-dev \
		liblog4cxx-dev \
		libopencv-dev \
		libtinyxml2-dev \
		libxaw7-dev \
		libxrandr-dev \
		pyqt5-dev \
		pyqt5-dev-tools \
		python3-lark \
		python3-opencv \
		python3-sip-dev \
		qtbase5-dev \
		qtbase5-dev-tools \
		qttools5-dev \
		qttools5-dev-tools \
		sip-dev
