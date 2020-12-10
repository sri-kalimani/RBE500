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

class JointSpaceVelocitiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q1 = null;
      this.q2 = null;
      this.q3 = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.wx = null;
      this.wy = null;
      this.wz = null;
      this.q1_dot = null;
      this.q2_dot = null;
      this.q3_dot = null;
    }
    else {
      if (initObj.hasOwnProperty('q1')) {
        this.q1 = initObj.q1
      }
      else {
        this.q1 = 0.0;
      }
      if (initObj.hasOwnProperty('q2')) {
        this.q2 = initObj.q2
      }
      else {
        this.q2 = 0.0;
      }
      if (initObj.hasOwnProperty('q3')) {
        this.q3 = initObj.q3
      }
      else {
        this.q3 = 0.0;
      }
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
      if (initObj.hasOwnProperty('q1_dot')) {
        this.q1_dot = initObj.q1_dot
      }
      else {
        this.q1_dot = 0.0;
      }
      if (initObj.hasOwnProperty('q2_dot')) {
        this.q2_dot = initObj.q2_dot
      }
      else {
        this.q2_dot = 0.0;
      }
      if (initObj.hasOwnProperty('q3_dot')) {
        this.q3_dot = initObj.q3_dot
      }
      else {
        this.q3_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSpaceVelocitiesRequest
    // Serialize message field [q1]
    bufferOffset = _serializer.float64(obj.q1, buffer, bufferOffset);
    // Serialize message field [q2]
    bufferOffset = _serializer.float64(obj.q2, buffer, bufferOffset);
    // Serialize message field [q3]
    bufferOffset = _serializer.float64(obj.q3, buffer, bufferOffset);
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
    // Serialize message field [q1_dot]
    bufferOffset = _serializer.float64(obj.q1_dot, buffer, bufferOffset);
    // Serialize message field [q2_dot]
    bufferOffset = _serializer.float64(obj.q2_dot, buffer, bufferOffset);
    // Serialize message field [q3_dot]
    bufferOffset = _serializer.float64(obj.q3_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSpaceVelocitiesRequest
    let len;
    let data = new JointSpaceVelocitiesRequest(null);
    // Deserialize message field [q1]
    data.q1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q2]
    data.q2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q3]
    data.q3 = _deserializer.float64(buffer, bufferOffset);
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
    // Deserialize message field [q1_dot]
    data.q1_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q2_dot]
    data.q2_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q3_dot]
    data.q3_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_kinematics/JointSpaceVelocitiesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25f781ef521cc3be875209dc009a9749';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Goal: Find joint space velocities
    
    #Inputs
    float64 q1
    float64 q2
    float64 q3
    
    float64 x
    float64 y
    float64 z
    float64 wx
    float64 wy
    float64 wz
    
    #Outputs
    float64 q1_dot
    float64 q2_dot
    float64 q3_dot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSpaceVelocitiesRequest(null);
    if (msg.q1 !== undefined) {
      resolved.q1 = msg.q1;
    }
    else {
      resolved.q1 = 0.0
    }

    if (msg.q2 !== undefined) {
      resolved.q2 = msg.q2;
    }
    else {
      resolved.q2 = 0.0
    }

    if (msg.q3 !== undefined) {
      resolved.q3 = msg.q3;
    }
    else {
      resolved.q3 = 0.0
    }

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

    if (msg.q1_dot !== undefined) {
      resolved.q1_dot = msg.q1_dot;
    }
    else {
      resolved.q1_dot = 0.0
    }

    if (msg.q2_dot !== undefined) {
      resolved.q2_dot = msg.q2_dot;
    }
    else {
      resolved.q2_dot = 0.0
    }

    if (msg.q3_dot !== undefined) {
      resolved.q3_dot = msg.q3_dot;
    }
    else {
      resolved.q3_dot = 0.0
    }

    return resolved;
    }
};

class JointSpaceVelocitiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSpaceVelocitiesResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSpaceVelocitiesResponse
    let len;
    let data = new JointSpaceVelocitiesResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_kinematics/JointSpaceVelocitiesResponse';
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
    const resolved = new JointSpaceVelocitiesResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: JointSpaceVelocitiesRequest,
  Response: JointSpaceVelocitiesResponse,
  md5sum() { return '25f781ef521cc3be875209dc009a9749'; },
  datatype() { return 'scara_kinematics/JointSpaceVelocities'; }
};
