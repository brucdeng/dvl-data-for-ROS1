import json 
import time

with open('data.json','r') as file:
	data=json.load(file)

while True:
	for entry in data:
		print(entry)
		with open('/home/bd/dvlros_ws/src/test_ros/python_script/output/out.json', 'w') as f:
			json.dump(entry, f)
		time.sleep(1)
