
# How to build in debian bullseye host

1. Setup pip mirror server:
```bash
mkdir $HOME/.pip
install bullseye/pip.conf $HOME/.pip/pip.conf
```

2. Install deps:
```bash
make -f bullseye/Makefile all
```

3. Fetch source code:
```bash
mkdir src
vcs import src < ros2.repos
```

4. Apply patches:
```bash
cd bullseye/patches && make
```

5. Build submodules:
```bash
colcon build --symlink-install
```
