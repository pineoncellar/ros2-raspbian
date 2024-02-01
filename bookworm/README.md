
# How to build in debian bookworm host

1. Install deps:
```bash
make -f bookworm/Makefile all
```

2. Fetch source code:
```bash
source venv/bin/activate
mkdir src
vcs import src < ros2.repos
```

3. Apply patches:
```bash
pushd bookworm/patches && make && popd
```

4. Build submodules:
```bash
source venv/bin/activate
colcon build --symlink-install
```

If something goes wrong, run step 3, and try step 4 again.
