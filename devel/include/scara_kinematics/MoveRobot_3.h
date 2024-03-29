// Generated by gencpp from file scara_kinematics/MoveRobot_3.msg
// DO NOT EDIT!


#ifndef SCARA_KINEMATICS_MESSAGE_MOVEROBOT_3_H
#define SCARA_KINEMATICS_MESSAGE_MOVEROBOT_3_H

#include <ros/service_traits.h>


#include <scara_kinematics/MoveRobot_3Request.h>
#include <scara_kinematics/MoveRobot_3Response.h>


namespace scara_kinematics
{

struct MoveRobot_3
{

typedef MoveRobot_3Request Request;
typedef MoveRobot_3Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveRobot_3
} // namespace scara_kinematics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_kinematics::MoveRobot_3 > {
  static const char* value()
  {
    return "7812ec5a5c1995339a863f1a70511e07";
  }

  static const char* value(const ::scara_kinematics::MoveRobot_3&) { return value(); }
};

template<>
struct DataType< ::scara_kinematics::MoveRobot_3 > {
  static const char* value()
  {
    return "scara_kinematics/MoveRobot_3";
  }

  static const char* value(const ::scara_kinematics::MoveRobot_3&) { return value(); }
};


// service_traits::MD5Sum< ::scara_kinematics::MoveRobot_3Request> should match
// service_traits::MD5Sum< ::scara_kinematics::MoveRobot_3 >
template<>
struct MD5Sum< ::scara_kinematics::MoveRobot_3Request>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::MoveRobot_3 >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobot_3Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::MoveRobot_3Request> should match
// service_traits::DataType< ::scara_kinematics::MoveRobot_3 >
template<>
struct DataType< ::scara_kinematics::MoveRobot_3Request>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::MoveRobot_3 >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobot_3Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_kinematics::MoveRobot_3Response> should match
// service_traits::MD5Sum< ::scara_kinematics::MoveRobot_3 >
template<>
struct MD5Sum< ::scara_kinematics::MoveRobot_3Response>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::MoveRobot_3 >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobot_3Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::MoveRobot_3Response> should match
// service_traits::DataType< ::scara_kinematics::MoveRobot_3 >
template<>
struct DataType< ::scara_kinematics::MoveRobot_3Response>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::MoveRobot_3 >::value();
  }
  static const char* value(const ::scara_kinematics::MoveRobot_3Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_KINEMATICS_MESSAGE_MOVEROBOT_3_H
