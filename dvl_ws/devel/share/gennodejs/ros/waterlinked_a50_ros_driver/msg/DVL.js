// Auto-generated. Do not edit!

// (in-package waterlinked_a50_ros_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DVLBeam = require('./DVLBeam.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DVL {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.velocity = null;
      this.fom = null;
      this.altitude = null;
      this.beams = null;
      this.velocity_valid = null;
      this.status = null;
      this.form = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('fom')) {
        this.fom = initObj.fom
      }
      else {
        this.fom = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('beams')) {
        this.beams = initObj.beams
      }
      else {
        this.beams = [];
      }
      if (initObj.hasOwnProperty('velocity_valid')) {
        this.velocity_valid = initObj.velocity_valid
      }
      else {
        this.velocity_valid = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('form')) {
        this.form = initObj.form
      }
      else {
        this.form = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DVL
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [fom]
    bufferOffset = _serializer.float64(obj.fom, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [beams]
    // Serialize the length for message field [beams]
    bufferOffset = _serializer.uint32(obj.beams.length, buffer, bufferOffset);
    obj.beams.forEach((val) => {
      bufferOffset = DVLBeam.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity_valid]
    bufferOffset = _serializer.bool(obj.velocity_valid, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int64(obj.status, buffer, bufferOffset);
    // Serialize message field [form]
    bufferOffset = _serializer.string(obj.form, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DVL
    let len;
    let data = new DVL(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [fom]
    data.fom = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [beams]
    // Deserialize array length for message field [beams]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beams = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beams[i] = DVLBeam.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity_valid]
    data.velocity_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [form]
    data.form = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 41 * object.beams.length;
    length += _getByteLength(object.form);
    return length + 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'waterlinked_a50_ros_driver/DVL';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dea1debc1aca7804a62c507714ec3777';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    #Time
    float64 time
    #Measured velocity [m/s]
    geometry_msgs/Vector3 velocity
    #Figure of Merit
    float64 fom
    #Altitude of the sensor
    float64 altitude
    #Beams/Transducers
    DVLBeam[] beams
    #Validity of velocity
    bool velocity_valid
    #Status message
    int64 status
    #Formatting of json
    string form
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: waterlinked_a50_ros_driver/DVLBeam
    #Transducer ID
    int64 id
    #Velocity reported by transducer
    float64 velocity
    #Distance value
    float64 distance
    #RSSI
    float64 rssi
    #NSD
    float64 nsd
    #Report if beam is locked on and providing reliable data
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DVL(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.fom !== undefined) {
      resolved.fom = msg.fom;
    }
    else {
      resolved.fom = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.beams !== undefined) {
      resolved.beams = new Array(msg.beams.length);
      for (let i = 0; i < resolved.beams.length; ++i) {
        resolved.beams[i] = DVLBeam.Resolve(msg.beams[i]);
      }
    }
    else {
      resolved.beams = []
    }

    if (msg.velocity_valid !== undefined) {
      resolved.velocity_valid = msg.velocity_valid;
    }
    else {
      resolved.velocity_valid = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.form !== undefined) {
      resolved.form = msg.form;
    }
    else {
      resolved.form = ''
    }

    return resolved;
    }
};

module.exports = DVL;
