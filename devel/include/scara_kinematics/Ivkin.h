// Generated by gencpp from file scara_kinematics/Ivkin.msg
// DO NOT EDIT!


#ifndef SCARA_KINEMATICS_MESSAGE_IVKIN_H
#define SCARA_KINEMATICS_MESSAGE_IVKIN_H

#include <ros/service_traits.h>


#include <scara_kinematics/IvkinRequest.h>
#include <scara_kinematics/IvkinResponse.h>


namespace scara_kinematics
{

struct Ivkin
{

typedef IvkinRequest Request;
typedef IvkinResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Ivkin
} // namespace scara_kinematics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_kinematics::Ivkin > {
  static const char* value()
  {
    return "def04ee6e0781ddbf5524d947db623d7";
  }

  static const char* value(const ::scara_kinematics::Ivkin&) { return value(); }
};

template<>
struct DataType< ::scara_kinematics::Ivkin > {
  static const char* value()
  {
    return "scara_kinematics/Ivkin";
  }

  static const char* value(const ::scara_kinematics::Ivkin&) { return value(); }
};


// service_traits::MD5Sum< ::scara_kinematics::IvkinRequest> should match
// service_traits::MD5Sum< ::scara_kinematics::Ivkin >
template<>
struct MD5Sum< ::scara_kinematics::IvkinRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::Ivkin >::value();
  }
  static const char* value(const ::scara_kinematics::IvkinRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::IvkinRequest> should match
// service_traits::DataType< ::scara_kinematics::Ivkin >
template<>
struct DataType< ::scara_kinematics::IvkinRequest>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::Ivkin >::value();
  }
  static const char* value(const ::scara_kinematics::IvkinRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_kinematics::IvkinResponse> should match
// service_traits::MD5Sum< ::scara_kinematics::Ivkin >
template<>
struct MD5Sum< ::scara_kinematics::IvkinResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::Ivkin >::value();
  }
  static const char* value(const ::scara_kinematics::IvkinResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::IvkinResponse> should match
// service_traits::DataType< ::scara_kinematics::Ivkin >
template<>
struct DataType< ::scara_kinematics::IvkinResponse>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::Ivkin >::value();
  }
  static const char* value(const ::scara_kinematics::IvkinResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_KINEMATICS_MESSAGE_IVKIN_H
