// Auto-generated. Do not edit!

// (in-package multi_mav_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FormationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_names = null;
      this.param_vals = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.spacing = null;
      this.center = null;
    }
    else {
      if (initObj.hasOwnProperty('param_names')) {
        this.param_names = initObj.param_names
      }
      else {
        this.param_names = [];
      }
      if (initObj.hasOwnProperty('param_vals')) {
        this.param_vals = initObj.param_vals
      }
      else {
        this.param_vals = [];
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('spacing')) {
        this.spacing = initObj.spacing
      }
      else {
        this.spacing = 0.0;
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FormationRequest
    // Serialize message field [param_names]
    bufferOffset = _arraySerializer.string(obj.param_names, buffer, bufferOffset, null);
    // Serialize message field [param_vals]
    bufferOffset = _arraySerializer.float32(obj.param_vals, buffer, bufferOffset, null);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [spacing]
    bufferOffset = _serializer.float32(obj.spacing, buffer, bufferOffset);
    // Check that the constant length array field [center] has the right length
    if (obj.center.length !== 3) {
      throw new Error('Unable to serialize array field center - length must be 3')
    }
    // Serialize message field [center]
    bufferOffset = _arraySerializer.float32(obj.center, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FormationRequest
    let len;
    let data = new FormationRequest(null);
    // Deserialize message field [param_names]
    data.param_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [param_vals]
    data.param_vals = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [spacing]
    data.spacing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.param_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.param_vals.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multi_mav_manager/FormationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e7868a67a52e80d4ef7185b309ee7ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] param_names
    float32[] param_vals
    float32 roll
    float32 pitch
    float32 yaw
    float32 spacing
    float32[3] center
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FormationRequest(null);
    if (msg.param_names !== undefined) {
      resolved.param_names = msg.param_names;
    }
    else {
      resolved.param_names = []
    }

    if (msg.param_vals !== undefined) {
      resolved.param_vals = msg.param_vals;
    }
    else {
      resolved.param_vals = []
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.spacing !== undefined) {
      resolved.spacing = msg.spacing;
    }
    else {
      resolved.spacing = 0.0
    }

    if (msg.center !== undefined) {
      resolved.center = msg.center;
    }
    else {
      resolved.center = new Array(3).fill(0)
    }

    return resolved;
    }
};

class FormationResponse {
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
    // Serializes a message object of type FormationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FormationResponse
    let len;
    let data = new FormationResponse(null);
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
    return 'multi_mav_manager/FormationResponse';
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
    const resolved = new FormationResponse(null);
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
  Request: FormationRequest,
  Response: FormationResponse,
  md5sum() { return '906f4ece79b3c9d0d3067fa07f7fd334'; },
  datatype() { return 'multi_mav_manager/Formation'; }
};
