
py-deps:
	pip3 install --user \
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
		python3-pytest-flake8 \
		python3-pytest-rerunfailures \
		python3-pytest-cov \
		python3-setuptools \
		wget

colcon-deps:
	sudo apt install -y \
		libtinyxml2-dev \
		libeigen3-dev \
