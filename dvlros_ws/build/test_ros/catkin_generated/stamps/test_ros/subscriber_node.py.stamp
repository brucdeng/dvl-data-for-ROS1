#! /usr/bin/env python3

import rospy
from std_msgs.msg import String

nodeName='messagesubscriber'
#topic name should match topic name of the topic in publisher_node.py
topicName='information'

#callback func
#every time a message arrives to the subscriber node, callback function is ran
def callbackFunction(message):
	print(message.data)
	
#initialize subscriber node
rospy.init_node(nodeName)

#subscribe to the topicName, specify the type of
# message we want to receive, and the name of the callback function
rospy.Subscriber(topicName, String, callbackFunction)

rospy.spin()
