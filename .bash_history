python --version
python3 --version
git clone https://github.com/waterlinked/dvl-python.git
sudo apt install git
git clone https://github.com/waterlinked/dvl-python.git
cd dvl-python/
cd tcp
ls
cd
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-update
sudo apt update
sudo apt install ros-noetic-desktop-full
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo $ROS_DISTRO
git  clone https://github.com/waterlinked/dvl-a50-ros-driver.git
cd dvl-a50-ros-driver/
ls
cd ..
rm -r dvl-a50-ros-driver/
sudo rm -r dvl-a50-ros-driver/
ls
mkdir dvl_ws/src
mkdir dvl_ws
cd dvl_ws
mkdir src
cd src
git clone -b master https://github.com/waterlinked/dvl-a50-ros-driver.git
cd ..
catkin_make
rosrun waterlinked_a50_ros_driver publisher.py _ip:=192.168.2.95
git clone -b master https://github.com/waterlinked/dvl-a50-ros-driver.git
rosrun waterlinked_a50_ros_driver subscriber_gui.py
cd ..
cd dvl_python
ls
cd dvl-python
ls
cd tcp
ls
python plot_dead_reckoning_positions.py "dvl_data.csv"
python3 plot_dead_reckoning_positions.py "dvl_data.csv"
cd
cd dvl-python/
python3 -m venv venv
sudo apt install pip
python3 -m venv venv
apt install python3.8-venv
sudo apt install python3.8-venv
python3 -m venv venv
source  venv/bin/activate
pip install matplotlib
deactivate
source venv/bin/activate
python dvl_tcp_parser.py --help
cd tcp
python dvl_tcp_parser.py --help
python dvl_tcp_parser.py velocity
gedit dvl_data.csv
ls
pyton plot_dead_reckoning_positions.py "dvl_data.csv"
python plot_dead_reckoning_positions.py "dvl_data.csv"
python3 dvl_tcp_parser.py dead_reckoning -i 192.168.194.95
deactivate
cd
ls
cd dvl_ws
catkin_make
source ~/bash.rc
source /opt/ros/noetic/setup.bash
rosrun
rosrun waterlinked_a50_ros_driver publisher.py
source /dev/setup.bash
ls
cd devel/
ls
cd ..
source devel/setup.bash
rosrun waterlinked_a50_ros_driver publisher.py
python --version
sudo apt install python-is-python3
alias python=python3
python --version
python3 --version
rosrun waterlinked_a50_ros_driver publisher.py
cd ..
source ~/.bashrc
source /opt/ros/noetic/setup.bash
mkdir dvlros_ws
cd dvlros_ws/
mkdir src
catkin_make
ls -l
source devel/setup.bash
echo $ROS_PACKAGE_PATH
cd src
catkin_create_pkg test_ros std msgs rospy roscpp
cd ..
catkin_make
sudo apt-get install ros-noetic-msgs
ls
cd src
ls
d test_ros/
cd test_ros/
ls
cd ../..
ls
catkin_create_pkg test_ros std_msgs rospy roscpp
cd test_ros
ls
cd src
ls
cd ..
catkin_make
cd ..
sudo rm -r dvlros_ws/
mkdir -p testros/src
rm -r testros
mkdir -p dvlros_ws/src
cd dvlros_ws
catkin_make
ls
source devel/setup.bash
echo $ROS_PACKAGE_PATH
cd src
catkin_create_pkg test_ros std_msgs rospy roscpp
cd ..
catkin_make
source devel/setup.bash
cd src/test_ros/
mkdir python_script
cd python_script/
ls
gedit publisher_node.py
chmod +x publisher_node.py 
ls -l
cd ..
gedit CMakeLists.txt 
rostopic list
rosrun test_ros publisher_node.py 
ls -l
cd python_script/
gedit subscriber_node.py
ls -l
chmod +x subscriber_node.py 
ls -l
cd ..
gedit CMakeLists.txt 
source ~/.bashrc
roscore
source ~/dvlros_ws/devel/setup.bash
rostopic list
cd
roscore
source ~/.bashrc
source ~/dvlros_ws/devel/setup.bash
rosrun test_ros publisher_node.py 
source dvlros_ws/devel/setup.bash
rosrun test_ros subscriber_node.py 
source devel/setup.bash
rosrun test_ros subscriber_node.py 
source devel/setup.bash
rosrun test_ros publisher_node.py 
