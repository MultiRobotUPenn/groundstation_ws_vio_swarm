// Auto-generated. Do not edit!

// (in-package trackers_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TransitionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracker = null;
    }
    else {
      if (initObj.hasOwnProperty('tracker')) {
        this.tracker = initObj.tracker
      }
      else {
        this.tracker = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitionRequest
    // Serialize message field [tracker]
    bufferOffset = _serializer.string(obj.tracker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitionRequest
    let len;
    let data = new TransitionRequest(null);
    // Deserialize message field [tracker]
    data.tracker = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tracker.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'trackers_manager/TransitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ed2ea9cfbf7aece5bb9c39adf1f02b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tracker
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransitionRequest(null);
    if (msg.tracker !== undefined) {
      resolved.tracker = msg.tracker;
    }
    else {
      resolved.tracker = ''
    }

    return resolved;
    }
};

class TransitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitionResponse
    let len;
    let data = new TransitionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'trackers_manager/TransitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransitionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: TransitionRequest,
  Response: TransitionResponse,
  md5sum() { return '3ed2ea9cfbf7aece5bb9c39adf1f02b7'; },
  datatype() { return 'trackers_manager/Transition'; }
};
