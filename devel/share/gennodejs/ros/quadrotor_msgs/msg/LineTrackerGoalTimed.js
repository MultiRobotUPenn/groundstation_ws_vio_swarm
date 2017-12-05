// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LineTrackerGoalTimed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.yaw = null;
      this.v_des = null;
      this.a_des = null;
      this.t_start = null;
      this.duration = null;
      this.relative = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('v_des')) {
        this.v_des = initObj.v_des
      }
      else {
        this.v_des = 0.0;
      }
      if (initObj.hasOwnProperty('a_des')) {
        this.a_des = initObj.a_des
      }
      else {
        this.a_des = 0.0;
      }
      if (initObj.hasOwnProperty('t_start')) {
        this.t_start = initObj.t_start
      }
      else {
        this.t_start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('relative')) {
        this.relative = initObj.relative
      }
      else {
        this.relative = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineTrackerGoalTimed
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [v_des]
    bufferOffset = _serializer.float64(obj.v_des, buffer, bufferOffset);
    // Serialize message field [a_des]
    bufferOffset = _serializer.float64(obj.a_des, buffer, bufferOffset);
    // Serialize message field [t_start]
    bufferOffset = _serializer.time(obj.t_start, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.duration(obj.duration, buffer, bufferOffset);
    // Serialize message field [relative]
    bufferOffset = _serializer.bool(obj.relative, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineTrackerGoalTimed
    let len;
    let data = new LineTrackerGoalTimed(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_des]
    data.v_des = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_des]
    data.a_des = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t_start]
    data.t_start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [relative]
    data.relative = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/LineTrackerGoalTimed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1504728e81f012ec0f7868b86b62cb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 yaw
    float64 v_des
    float64 a_des
    time t_start
    duration duration
    bool relative
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineTrackerGoalTimed(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.v_des !== undefined) {
      resolved.v_des = msg.v_des;
    }
    else {
      resolved.v_des = 0.0
    }

    if (msg.a_des !== undefined) {
      resolved.a_des = msg.a_des;
    }
    else {
      resolved.a_des = 0.0
    }

    if (msg.t_start !== undefined) {
      resolved.t_start = msg.t_start;
    }
    else {
      resolved.t_start = {secs: 0, nsecs: 0}
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = {secs: 0, nsecs: 0}
    }

    if (msg.relative !== undefined) {
      resolved.relative = msg.relative;
    }
    else {
      resolved.relative = false
    }

    return resolved;
    }
};

module.exports = LineTrackerGoalTimed;
