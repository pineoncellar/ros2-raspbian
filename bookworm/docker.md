
# How to build

1. Download bookworm docker image:
```bash
sudo docker pull debian:bookworm
```

2. Build ros2 image:
```bash
sudo docker build -t ros2:bookworm .
```

3. Build ros2 repos:
```bash
sudo docker run -v $PWD:/opt/ros2 -it ros2:bookworm /bin/bash
```
