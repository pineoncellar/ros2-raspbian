
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

2. Fetch source code:

```bash
mkdir src
vcs import src < ros2.repos
```
