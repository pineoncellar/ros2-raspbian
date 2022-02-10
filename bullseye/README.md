
# How to build in debian bullseye host

1. Install deps:
```bash
make -f bullseye/Makefile all
```

2. Fetch source code:
```bash
mkdir src
vcs import src < ros2.repos
```

3. Apply patches:
```bash
pushd bullseye/patches && make && popd
```

4. Build submodules:
```bash
colcon build --symlink-install
```
