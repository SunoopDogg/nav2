apt update

apt install -q -y ros-${ROS_DISTRO}-rviz2

apt install -q -y ros-${ROS_DISTRO}-turtlebot3-gazebo

source /opt/ros/${ROS_DISTRO}/setup.bash

cd src

git clone https://github.com/ros-navigation/navigation2.git --branch ${ROS_DISTRO}

cd ..

rosdep install -y \
  --from-paths ./src \
  --ignore-src

rm -rf /var/lib/apt/lists/*