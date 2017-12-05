// Generated by gencpp from file quadrotor_msgs/LineTrackerGoalTimed.msg
// DO NOT EDIT!


#ifndef QUADROTOR_MSGS_MESSAGE_LINETRACKERGOALTIMED_H
#define QUADROTOR_MSGS_MESSAGE_LINETRACKERGOALTIMED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace quadrotor_msgs
{
template <class ContainerAllocator>
struct LineTrackerGoalTimed_
{
  typedef LineTrackerGoalTimed_<ContainerAllocator> Type;

  LineTrackerGoalTimed_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , v_des(0.0)
    , a_des(0.0)
    , t_start()
    , duration()
    , relative(false)  {
    }
  LineTrackerGoalTimed_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , v_des(0.0)
    , a_des(0.0)
    , t_start()
    , duration()
    , relative(false)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _v_des_type;
  _v_des_type v_des;

   typedef double _a_des_type;
  _a_des_type a_des;

   typedef ros::Time _t_start_type;
  _t_start_type t_start;

   typedef ros::Duration _duration_type;
  _duration_type duration;

   typedef uint8_t _relative_type;
  _relative_type relative;




  typedef boost::shared_ptr< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> const> ConstPtr;

}; // struct LineTrackerGoalTimed_

typedef ::quadrotor_msgs::LineTrackerGoalTimed_<std::allocator<void> > LineTrackerGoalTimed;

typedef boost::shared_ptr< ::quadrotor_msgs::LineTrackerGoalTimed > LineTrackerGoalTimedPtr;
typedef boost::shared_ptr< ::quadrotor_msgs::LineTrackerGoalTimed const> LineTrackerGoalTimedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace quadrotor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'quadrotor_msgs': ['/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e1504728e81f012ec0f7868b86b62cb8";
  }

  static const char* value(const ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe1504728e81f012eULL;
  static const uint64_t static_value2 = 0xc0f7868b86b62cb8ULL;
};

template<class ContainerAllocator>
struct DataType< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quadrotor_msgs/LineTrackerGoalTimed";
  }

  static const char* value(const ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
float64 yaw\n\
float64 v_des\n\
float64 a_des\n\
time t_start\n\
duration duration\n\
bool relative\n\
";
  }

  static const char* value(const ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
      stream.next(m.v_des);
      stream.next(m.a_des);
      stream.next(m.t_start);
      stream.next(m.duration);
      stream.next(m.relative);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LineTrackerGoalTimed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quadrotor_msgs::LineTrackerGoalTimed_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "v_des: ";
    Printer<double>::stream(s, indent + "  ", v.v_des);
    s << indent << "a_des: ";
    Printer<double>::stream(s, indent + "  ", v.a_des);
    s << indent << "t_start: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.t_start);
    s << indent << "duration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.duration);
    s << indent << "relative: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.relative);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUADROTOR_MSGS_MESSAGE_LINETRACKERGOALTIMED_H