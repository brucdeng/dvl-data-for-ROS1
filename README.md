# Parse A50 DVL dead reckoning data as JSON entry -> ROS1 publisher and subscriber nodes
Run dvl_data.py to start writing JSON entries of the dead reckoning data to an output JSON file
make the package and source

```
roscore
```

```
rosrun test_ros publisher_node.py
```
```
rosrun test_ros subscriber_node.py
```

