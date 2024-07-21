import json 
import time
import os

with open(os.path.expanduser("~")+'/dvlros_ws/src/test_ros/python_script/data.json','r') as file:
	data=json.load(file)

while True:
	for entry in data:
		print(entry)
		with open(os.path.expanduser("~")+'/dvlros_ws/src/test_ros/python_script/output/out.json', 'w') as f:
			json.dump(entry, f)
		time.sleep(1)
