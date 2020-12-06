// Generated by gencpp from file scara_kinematics/MoveRobot.msg
// DO NOT EDIT!


#ifndef SCARA_KINEMATICS_MESSAGE_MOVEROBOT_H
#define SCARA_KINEMATICS_MESSAGE_MOVEROBOT_H

#include <ros/service_traits.h>


#include <scara_kinematics/MoveRobotRequest.h>
#include <scara_kinematics/MoveRobotResponse.h>


namespace scara_kinematics
{

struct MoveRobot
{

typedef MoveRobotRequest Request;
typedef MoveRobotResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveRobot
} // namespace scara_kinematics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_kinematics::MoveRobot > {
  static const char* value()
  {
    return "ca88e5bdc8790ee184161f08748e8aba";
  }

  static const char* value(const ::scara_kinematics::MoveRobot&) { return value(); }
};

template<>
struct DataType< ::scara_kinematics::MoveRobot > {
  static const char* value()
  {
    return "scara_kinematics/MoveRobot";
  }

  static const char* value(const ::scara_kinematics::MoveRobot&) { return value(); }
};


// service_traits::MD5Sum< ::scara_kinematics::MoveRobotRequest> should match
// service_traits::MD5Sum< ::scara_kinematics::MoveRobot >
template<>
struct MD5Sum< ::scara_kinematics::MoveRobotRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::MoveRobot >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobotRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::MoveRobotRequest> should match
// service_traits::DataType< ::scara_kinematics::MoveRobot >
template<>
struct DataType< ::scara_kinematics::MoveRobotRequest>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::MoveRobot >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobotRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_kinematics::MoveRobotResponse> should match
// service_traits::MD5Sum< ::scara_kinematics::MoveRobot >
template<>
struct MD5Sum< ::scara_kinematics::MoveRobotResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::MoveRobot >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobotResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::MoveRobotResponse> should match
// service_traits::DataType< ::scara_kinematics::MoveRobot >
template<>
struct DataType< ::scara_kinematics::MoveRobotResponse>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::MoveRobot >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobotResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_KINEMATICS_MESSAGE_MOVEROBOT_H