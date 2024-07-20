#! /usr/bin/env python3
import rospy
import os
import json
from std_msgs.msg import String

nodeName='messagepublisher'
topicName='information'
#initializing node
rospy.init_node(nodeName, anonymous=True)
#publishing to topic
publisher1=rospy.Publisher(topicName,String,queue_size=5)

#1Hz means 1 message per second
ratePublisher=rospy.Rate(1)

while not rospy.is_shutdown():
	try:
		with open(os.path.expanduser("~")+'/dvlros_ws/src/test_ros/python_script/output/out.json','r') as f:
			data = json.load(f)
			data_str=json.dumps(data)
	except (json.JSONDecodeError):
		data_str="gagagag"
	rospy.loginfo(data_str)
	#publishing the message
	publisher1.publish(data_str)
	
	ratePublisher.sleep()
	
