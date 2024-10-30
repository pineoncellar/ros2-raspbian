# About

Build ROS2 (jazzy version) on raspberrypi OS.

`ros2.repos` is copied from [ros2 (jazzy-release branch)](https://github.com/ros2/ros2/tree/jazzy-release).

For more more information about ROS, see [documentation](https://docs.ros.org)

# How to build in raspbian host

1. Install deps:

```bash
make -f depends/Makefile all
```

2. build sip & pyqt5

```bash
wget -O depends/sip.tar.gz https://www.riverbankcomputing.com/static/Downloads/sip/4.19.25/sip-4.19.25.tar.gz
tar -zxvf depends/sip.tar.gz -C depends
git apply patches/sip-siplib.patch
pushd depends/sip-4.19.25
sudo python configure.py --sip-module PyQt5.sip
sudo make -j4
sudo make install
popd

wget -O depends/pyqt5.tar.gz https://pypi.tuna.tsinghua.edu.cn/packages/28/6c/640e3f5c734c296a7193079a86842a789edb7988dca39eab44579088a1d1/PyQt5-5.15.2.tar.gz
tar -zxvf depends/pyqt5.tar.gz -C depends
pushd depends/PyQt5-5.15.2
sudo python configure.py
sudo make -j4
sudo make install
popd

sudo cp -r /usr/lib/python3/dist-packages/PyQt5 /usr/lib/python3/dist-packages/sipconfig.py ./venv/lib/python3.11/site-packages
```

3. Fetch source code:

```bash
source venv/bin/activate
mkdir src
vcs import src < ros2.repos
```

4. Apply patches:

```bash
pushd patches && make && popd
```

5. Build submodules:

```bash
source venv/bin/activate
colcon build --symlink-install
```

If something goes wrong, run step 3, and try step 4 again.
