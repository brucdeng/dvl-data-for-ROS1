import rospy
import json
from std_msgs.msg import String

def callback(data):
    #convert data to a JSON entry
    json_data = json.loads(data.data)
    print("i got x: %s" % str(json_data["x"]))
    print("i got y: %s" % str(json_data["y"]))
    print("i got z: %s" % str(json_data["z"]))
    if float(json_data["x"]) > .238:
    	print("stop moving forward")
    	#code to stop moving forward
    else:
    	print("moving forward")
    	#code to start moving forward

def listener():
    # Initialize the ROS node
    rospy.init_node('exlistener', anonymous=True)
    
    # Subscribe to the topic
    rospy.Subscriber("information", String, callback)
    
    # Keep the script running
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
