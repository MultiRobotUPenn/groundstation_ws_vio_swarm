// Generated by gencpp from file quadrotor_msgs/TrackerStatus.msg
// DO NOT EDIT!


#ifndef QUADROTOR_MSGS_MESSAGE_TRACKERSTATUS_H
#define QUADROTOR_MSGS_MESSAGE_TRACKERSTATUS_H


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
struct TrackerStatus_
{
  typedef TrackerStatus_<ContainerAllocator> Type;

  TrackerStatus_()
    : stamp()
    , tracker()
    , status(0)  {
    }
  TrackerStatus_(const ContainerAllocator& _alloc)
    : stamp()
    , tracker(_alloc)
    , status(0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _tracker_type;
  _tracker_type tracker;

   typedef uint8_t _status_type;
  _status_type status;


    enum { ACTIVE = 0u };
     enum { SUCCEEDED = 1u };
 

  typedef boost::shared_ptr< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> const> ConstPtr;

}; // struct TrackerStatus_

typedef ::quadrotor_msgs::TrackerStatus_<std::allocator<void> > TrackerStatus;

typedef boost::shared_ptr< ::quadrotor_msgs::TrackerStatus > TrackerStatusPtr;
typedef boost::shared_ptr< ::quadrotor_msgs::TrackerStatus const> TrackerStatusConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace quadrotor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'quadrotor_msgs': ['/home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/quadrotor_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a7faf35bec75678eba6ebc513e053b6b";
  }

  static const char* value(const ::quadrotor_msgs::TrackerStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa7faf35bec75678eULL;
  static const uint64_t static_value2 = 0xba6ebc513e053b6bULL;
};

template<class ContainerAllocator>
struct DataType< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quadrotor_msgs/TrackerStatus";
  }

  static const char* value(const ::quadrotor_msgs::TrackerStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n\
string tracker\n\
uint8 status\n\
\n\
# Options for the status\n\
uint8 ACTIVE    = 0             # Currently active\n\
uint8 SUCCEEDED = 1             # The tracker has finished\n\
";
  }

  static const char* value(const ::quadrotor_msgs::TrackerStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.tracker);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackerStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quadrotor_msgs::TrackerStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quadrotor_msgs::TrackerStatus_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "tracker: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.tracker);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUADROTOR_MSGS_MESSAGE_TRACKERSTATUS_H
