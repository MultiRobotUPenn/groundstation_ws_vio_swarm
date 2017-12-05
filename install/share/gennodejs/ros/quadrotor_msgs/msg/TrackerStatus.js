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

class TrackerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.tracker = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('tracker')) {
        this.tracker = initObj.tracker
      }
      else {
        this.tracker = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackerStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [tracker]
    bufferOffset = _serializer.string(obj.tracker, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackerStatus
    let len;
    let data = new TrackerStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [tracker]
    data.tracker = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tracker.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/TrackerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7faf35bec75678eba6ebc513e053b6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    string tracker
    uint8 status
    
    # Options for the status
    uint8 ACTIVE    = 0             # Currently active
    uint8 SUCCEEDED = 1             # The tracker has finished
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackerStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.tracker !== undefined) {
      resolved.tracker = msg.tracker;
    }
    else {
      resolved.tracker = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
TrackerStatus.Constants = {
  ACTIVE: 0,
  SUCCEEDED: 1,
}

module.exports = TrackerStatus;
