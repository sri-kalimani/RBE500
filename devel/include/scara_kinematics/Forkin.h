// Generated by gencpp from file scara_kinematics/Forkin.msg
// DO NOT EDIT!


#ifndef SCARA_KINEMATICS_MESSAGE_FORKIN_H
#define SCARA_KINEMATICS_MESSAGE_FORKIN_H

#include <ros/service_traits.h>


#include <scara_kinematics/ForkinRequest.h>
#include <scara_kinematics/ForkinResponse.h>


namespace scara_kinematics
{

struct Forkin
{

typedef ForkinRequest Request;
typedef ForkinResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Forkin
} // namespace scara_kinematics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_kinematics::Forkin > {
  static const char* value()
  {
    return "4938f680caba403e8ef27465568d7ea8";
  }

  static const char* value(const ::scara_kinematics::Forkin&) { return value(); }
};

template<>
struct DataType< ::scara_kinematics::Forkin > {
  static const char* value()
  {
    return "scara_kinematics/Forkin";
  }

  static const char* value(const ::scara_kinematics::Forkin&) { return value(); }
};


// service_traits::MD5Sum< ::scara_kinematics::ForkinRequest> should match
// service_traits::MD5Sum< ::scara_kinematics::Forkin >
template<>
struct MD5Sum< ::scara_kinematics::ForkinRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::Forkin >::value();
  }
  static const char* value(const ::scara_kinematics::ForkinRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::ForkinRequest> should match
// service_traits::DataType< ::scara_kinematics::Forkin >
template<>
struct DataType< ::scara_kinematics::ForkinRequest>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::Forkin >::value();
  }
  static const char* value(const ::scara_kinematics::ForkinRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_kinematics::ForkinResponse> should match
// service_traits::MD5Sum< ::scara_kinematics::Forkin >
template<>
struct MD5Sum< ::scara_kinematics::ForkinResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scara_kinematics::Forkin >::value();
  }
  static const char* value(const ::scara_kinematics::ForkinResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_kinematics::ForkinResponse> should match
// service_traits::DataType< ::scara_kinematics::Forkin >
template<>
struct DataType< ::scara_kinematics::ForkinResponse>
{
  static const char* value()
  {
    return DataType< ::scara_kinematics::Forkin >::value();
  }
  static const char* value(const ::scara_kinematics::ForkinResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_KINEMATICS_MESSAGE_FORKIN_H
