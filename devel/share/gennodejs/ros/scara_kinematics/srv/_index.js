
"use strict";

let Ivkin = require('./Ivkin.js')
let MoveToPoint = require('./MoveToPoint.js')
let TaskSpaceVelocities = require('./TaskSpaceVelocities.js')
let MoveRobot = require('./MoveRobot.js')
let Forkin = require('./Forkin.js')
let JointSpaceVelocities = require('./JointSpaceVelocities.js')
let MoveToJoints = require('./MoveToJoints.js')

module.exports = {
  Ivkin: Ivkin,
  MoveToPoint: MoveToPoint,
  TaskSpaceVelocities: TaskSpaceVelocities,
  MoveRobot: MoveRobot,
  Forkin: Forkin,
  JointSpaceVelocities: JointSpaceVelocities,
  MoveToJoints: MoveToJoints,
};
