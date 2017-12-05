// Auto-generated. Do not edit!

// (in-package mav_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoalTimedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
      this.duration = null;
      this.t_start = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('t_start')) {
        this.t_start = initObj.t_start
      }
      else {
        this.t_start = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalTimedRequest
    // Check that the constant length array field [goal] has the right length
    if (obj.goal.length !== 4) {
      throw new Error('Unable to serialize array field goal - length must be 4')
    }
    // Serialize message field [goal]
    bufferOffset = _arraySerializer.float32(obj.goal, buffer, bufferOffset, 4);
    // Serialize message field [duration]
    bufferOffset = _serializer.duration(obj.duration, buffer, bufferOffset);
    // Serialize message field [t_start]
    bufferOffset = _serializer.time(obj.t_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalTimedRequest
    let len;
    let data = new GoalTimedRequest(null);
    // Deserialize message field [goal]
    data.goal = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [duration]
    data.duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [t_start]
    data.t_start = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mav_manager/GoalTimedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c9a1ea281c62219122f22aa2b508b97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] goal
    duration duration
    time t_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalTimedRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = new Array(4).fill(0)
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = {secs: 0, nsecs: 0}
    }

    if (msg.t_start !== undefined) {
      resolved.t_start = msg.t_start;
    }
    else {
      resolved.t_start = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class GoalTimedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalTimedResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalTimedResponse
    let len;
    let data = new GoalTimedResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mav_manager/GoalTimedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalTimedResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GoalTimedRequest,
  Response: GoalTimedResponse,
  md5sum() { return '3200a97d30222d1d03961acacb87f306'; },
  datatype() { return 'mav_manager/GoalTimed'; }
};
