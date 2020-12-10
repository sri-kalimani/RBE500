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

class MoveRobotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ref = null;
    }
    else {
      if (initObj.hasOwnProperty('ref')) {
        this.ref = initObj.ref
      }
      else {
        this.ref = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveRobotRequest
    // Serialize message field [ref]
    bufferOffset = _serializer.float32(obj.ref, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveRobotRequest
    let len;
    let data = new MoveRobotRequest(null);
    // Deserialize message field [ref]
    data.ref = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_kinematics/MoveRobotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c779e413fd23328fc4ad2e049b1ea9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ref
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveRobotRequest(null);
    if (msg.ref !== undefined) {
      resolved.ref = msg.ref;
    }
    else {
      resolved.ref = 0.0
    }

    return resolved;
    }
};

class MoveRobotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.effort = null;
    }
    else {
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveRobotResponse
    // Serialize message field [effort]
    bufferOffset = _serializer.float32(obj.effort, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveRobotResponse
    let len;
    let data = new MoveRobotResponse(null);
    // Deserialize message field [effort]
    data.effort = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_kinematics/MoveRobotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2913ef668deee8c9d4fa6534272a86c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 effort
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveRobotResponse(null);
    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveRobotRequest,
  Response: MoveRobotResponse,
  md5sum() { return 'ca88e5bdc8790ee184161f08748e8aba'; },
  datatype() { return 'scara_kinematics/MoveRobot'; }
};
