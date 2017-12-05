// Generated by gencpp from file trackers_manager/Transition.msg
// DO NOT EDIT!


#ifndef TRACKERS_MANAGER_MESSAGE_TRANSITION_H
#define TRACKERS_MANAGER_MESSAGE_TRANSITION_H

#include <ros/service_traits.h>


#include <trackers_manager/TransitionRequest.h>
#include <trackers_manager/TransitionResponse.h>


namespace trackers_manager
{

struct Transition
{

typedef TransitionRequest Request;
typedef TransitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Transition
} // namespace trackers_manager


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::trackers_manager::Transition > {
  static const char* value()
  {
    return "3ed2ea9cfbf7aece5bb9c39adf1f02b7";
  }

  static const char* value(const ::trackers_manager::Transition&) { return value(); }
};

template<>
struct DataType< ::trackers_manager::Transition > {
  static const char* value()
  {
    return "trackers_manager/Transition";
  }

  static const char* value(const ::trackers_manager::Transition&) { return value(); }
};


// service_traits::MD5Sum< ::trackers_manager::TransitionRequest> should match 
// service_traits::MD5Sum< ::trackers_manager::Transition > 
template<>
struct MD5Sum< ::trackers_manager::TransitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::trackers_manager::Transition >::value();
  }
  static const char* value(const ::trackers_manager::TransitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::trackers_manager::TransitionRequest> should match 
// service_traits::DataType< ::trackers_manager::Transition > 
template<>
struct DataType< ::trackers_manager::TransitionRequest>
{
  static const char* value()
  {
    return DataType< ::trackers_manager::Transition >::value();
  }
  static const char* value(const ::trackers_manager::TransitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::trackers_manager::TransitionResponse> should match 
// service_traits::MD5Sum< ::trackers_manager::Transition > 
template<>
struct MD5Sum< ::trackers_manager::TransitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::trackers_manager::Transition >::value();
  }
  static const char* value(const ::trackers_manager::TransitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::trackers_manager::TransitionResponse> should match 
// service_traits::DataType< ::trackers_manager::Transition > 
template<>
struct DataType< ::trackers_manager::TransitionResponse>
{
  static const char* value()
  {
    return DataType< ::trackers_manager::Transition >::value();
  }
  static const char* value(const ::trackers_manager::TransitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TRACKERS_MANAGER_MESSAGE_TRANSITION_H
