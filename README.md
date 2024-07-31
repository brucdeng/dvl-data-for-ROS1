# Parse A50 DVL dead reckoning data as JSON entry -> ROS1 publisher and subscriber nodes

**First, make the package with catkin and source. Then,**
1. Make a file named out.json in the dvlros_ws directory after cloning repo 
2. Run dvl_tcp_parser.py (this is the same file from waterlinked dvl-python github, run it the same exact way as you would, include all necessary parameters to get the dead reckoning report)
```
python3 dvl_tcp_parser.py dead_reckoning -i 192.168.194.95
```
3. Check out.json to see if the dead reckonoing report is being fed to the JSON file (this part may or may not work), make sure to refresh the file

**Explanation on how the files work/are related to each other:**
- data.json stores the 4 JSON dead reckoning entries
- dvl_data.py reads from data.json, and constantly updates out.json with the entries from data.json, one by one, in a loop
- publisher_node.py executes dvl_data.py, reads from out.json, and publishes what is read
- subscriber_node.py subscribes to the topic the publisher is publishing to
- dvl_control.py is intended to read the JSON entries being published to the ROS topic, and execute movement based on what is being read. Currently, it is able to listen to the ROS topic, and gather data such as x, y, z position coordinates and other info dead reckoning offers. 

Currently the publisher node (see below) doesn't publish the live dead reckonoing feed (it just reads from a JSON file of four JSON entries and constantly publishes those 4 in a loop) so the plan is to see if the 3 steps above work, and if it does we can publish the live dead reckoning feed by replacing dvl_data.py with dvl_tcp_parser.py


```
roscore
```

```
rosrun test_ros publisher_node.py
```
```
rosrun test_ros subscriber_node.py
```

