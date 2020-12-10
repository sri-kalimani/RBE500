// Auto-generated. Do not edit!

// (in-package scara_kinematics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TaskSpaceVelocitiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q_pos = null;
      this.q_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('q_pos')) {
        this.q_pos = initObj.q_pos
      }
      else {
        this.q_pos = [];
      }
      if (initObj.hasOwnProperty('q_vel')) {
        this.q_vel = initObj.q_vel
      }
      else {
        this.q_vel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskSpaceVelocitiesRequest
    // Serialize message field [q_pos]
    bufferOffset = _arraySerializer.float64(obj.q_pos, buffer, bufferOffset, null);
    // Serialize message field [q_vel]
    bufferOffset = _arraySerializer.float64(obj.q_vel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskSpaceVelocitiesRequest
    let len;
    let data = new TaskSpaceVelocitiesRequest(null);
    // Deserialize message field [q_pos]
    data.q_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [q_vel]
    data.q_vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.q_pos.length;
    length += 8 * object.q_vel.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_kinematics/TaskSpaceVelocitiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd89d7b2bf75f07170664fc55db587d4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Goal: Find task space velocities
    
    #Inputs
    float64[] q_pos
    
    float64[] q_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskSpaceVelocitiesRequest(null);
    if (msg.q_pos !== undefined) {
      resolved.q_pos = msg.q_pos;
    }
    else {
      resolved.q_pos = []
    }

    if (msg.q_vel !== undefined) {
      resolved.q_vel = msg.q_vel;
    }
    else {
      resolved.q_vel = []
    }

    return resolved;
    }
};

class TaskSpaceVelocitiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.wx = null;
      this.wy = null;
      this.wz = null;
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
      if (initObj.hasOwnProperty('wx')) {
        this.wx = initObj.wx
      }
      else {
        this.wx = 0.0;
      }
      if (initObj.hasOwnProperty('wy')) {
        this.wy = initObj.wy
      }
      else {
        this.wy = 0.0;
      }
      if (initObj.hasOwnProperty('wz')) {
        this.wz = initObj.wz
      }
      else {
        this.wz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskSpaceVelocitiesResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [wx]
    bufferOffset = _serializer.float64(obj.wx, buffer, bufferOffset);
    // Serialize message field [wy]
    bufferOffset = _serializer.float64(obj.wy, buffer, bufferOffset);
    // Serialize message field [wz]
    bufferOffset = _serializer.float64(obj.wz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskSpaceVelocitiesResponse
    let len;
    let data = new TaskSpaceVelocitiesResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wx]
    data.wx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wy]
    data.wy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wz]
    data.wz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_kinematics/TaskSpaceVelocitiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b0a1f9128335871daf9429e0c162294';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Outputs
    float64 x
    float64 y
    float64 z
    float64 wx
    float64 wy
    float64 wz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskSpaceVelocitiesResponse(null);
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

    if (msg.wx !== undefined) {
      resolved.wx = msg.wx;
    }
    else {
      resolved.wx = 0.0
    }

    if (msg.wy !== undefined) {
      resolved.wy = msg.wy;
    }
    else {
      resolved.wy = 0.0
    }

    if (msg.wz !== undefined) {
      resolved.wz = msg.wz;
    }
    else {
      resolved.wz = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: TaskSpaceVelocitiesRequest,
  Response: TaskSpaceVelocitiesResponse,
  md5sum() { return '9a192cb5d2f6b202f97255024ecba4e7'; },
  datatype() { return 'scara_kinematics/TaskSpaceVelocities'; }
};
