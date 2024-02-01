
# How to build in debian bookworm host

1. Install deps:
```bash
make -f bookworm/Makefile all
```

2. Fetch source code:
```bash
mkdir src
vcs import src < ros2.repos
```

3. Apply patches:
```bash
pushd bookworm/patches && make && popd
```

4. Build submodules:
```bash
colcon build --symlink-install
```
