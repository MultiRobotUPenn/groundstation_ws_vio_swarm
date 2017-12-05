// Auto-generated. Do not edit!

// (in-package multi_mav_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let quadrotor_msgs = _finder('quadrotor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RawPosFormationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goals = null;
    }
    else {
      if (initObj.hasOwnProperty('goals')) {
        this.goals = initObj.goals
      }
      else {
        this.goals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawPosFormationRequest
    // Serialize message field [goals]
    // Serialize the length for message field [goals]
    bufferOffset = _serializer.uint32(obj.goals.length, buffer, bufferOffset);
    obj.goals.forEach((val) => {
      bufferOffset = quadrotor_msgs.msg.FlatOutputs.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawPosFormationRequest
    let len;
    let data = new RawPosFormationRequest(null);
    // Deserialize message field [goals]
    // Deserialize array length for message field [goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goals[i] = quadrotor_msgs.msg.FlatOutputs.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.goals.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multi_mav_manager/RawPosFormationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8201c3a37dceb4a570363e2bc87d7de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    quadrotor_msgs/FlatOutputs[] goals
    
    ================================================================================
    MSG: quadrotor_msgs/FlatOutputs
    float32 x
    float32 y
    float32 z
    float32 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RawPosFormationRequest(null);
    if (msg.goals !== undefined) {
      resolved.goals = new Array(msg.goals.length);
      for (let i = 0; i < resolved.goals.length; ++i) {
        resolved.goals[i] = quadrotor_msgs.msg.FlatOutputs.Resolve(msg.goals[i]);
      }
    }
    else {
      resolved.goals = []
    }

    return resolved;
    }
};

class RawPosFormationResponse {
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
    // Serializes a message object of type RawPosFormationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawPosFormationResponse
    let len;
    let data = new RawPosFormationResponse(null);
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
    return 'multi_mav_manager/RawPosFormationResponse';
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
    const resolved = new RawPosFormationResponse(null);
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
  Request: RawPosFormationRequest,
  Response: RawPosFormationResponse,
  md5sum() { return '4fedc5f0f5ef4fa43b290be6cfe0b1a7'; },
  datatype() { return 'multi_mav_manager/RawPosFormation'; }
};
