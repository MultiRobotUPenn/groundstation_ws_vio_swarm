// Generated by gencpp from file mav_manager/Vec4.msg
// DO NOT EDIT!


#ifndef MAV_MANAGER_MESSAGE_VEC4_H
#define MAV_MANAGER_MESSAGE_VEC4_H

#include <ros/service_traits.h>


#include <mav_manager/Vec4Request.h>
#include <mav_manager/Vec4Response.h>


namespace mav_manager
{

struct Vec4
{

typedef Vec4Request Request;
typedef Vec4Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Vec4
} // namespace mav_manager


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mav_manager::Vec4 > {
  static const char* value()
  {
    return "44ba4f91582c39f849015d605157d6ff";
  }

  static const char* value(const ::mav_manager::Vec4&) { return value(); }
};

template<>
struct DataType< ::mav_manager::Vec4 > {
  static const char* value()
  {
    return "mav_manager/Vec4";
  }

  static const char* value(const ::mav_manager::Vec4&) { return value(); }
};


// service_traits::MD5Sum< ::mav_manager::Vec4Request> should match 
// service_traits::MD5Sum< ::mav_manager::Vec4 > 
template<>
struct MD5Sum< ::mav_manager::Vec4Request>
{
  static const char* value()
  {
    return MD5Sum< ::mav_manager::Vec4 >::value();
  }
  static const char* value(const ::mav_manager::Vec4Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::mav_manager::Vec4Request> should match 
// service_traits::DataType< ::mav_manager::Vec4 > 
template<>
struct DataType< ::mav_manager::Vec4Request>
{
  static const char* value()
  {
    return DataType< ::mav_manager::Vec4 >::value();
  }
  static const char* value(const ::mav_manager::Vec4Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mav_manager::Vec4Response> should match 
// service_traits::MD5Sum< ::mav_manager::Vec4 > 
template<>
struct MD5Sum< ::mav_manager::Vec4Response>
{
  static const char* value()
  {
    return MD5Sum< ::mav_manager::Vec4 >::value();
  }
  static const char* value(const ::mav_manager::Vec4Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::mav_manager::Vec4Response> should match 
// service_traits::DataType< ::mav_manager::Vec4 > 
template<>
struct DataType< ::mav_manager::Vec4Response>
{
  static const char* value()
  {
    return DataType< ::mav_manager::Vec4 >::value();
  }
  static const char* value(const ::mav_manager::Vec4Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MAV_MANAGER_MESSAGE_VEC4_H
