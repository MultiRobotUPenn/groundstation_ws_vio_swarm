// Generated by gencpp from file multimaster_msgs_fkie/GetSyncInfoResponse.msg
// DO NOT EDIT!


#ifndef MULTIMASTER_MSGS_FKIE_MESSAGE_GETSYNCINFORESPONSE_H
#define MULTIMASTER_MSGS_FKIE_MESSAGE_GETSYNCINFORESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <multimaster_msgs_fkie/SyncMasterInfo.h>

namespace multimaster_msgs_fkie
{
template <class ContainerAllocator>
struct GetSyncInfoResponse_
{
  typedef GetSyncInfoResponse_<ContainerAllocator> Type;

  GetSyncInfoResponse_()
    : hosts()  {
    }
  GetSyncInfoResponse_(const ContainerAllocator& _alloc)
    : hosts(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::multimaster_msgs_fkie::SyncMasterInfo_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::multimaster_msgs_fkie::SyncMasterInfo_<ContainerAllocator> >::other >  _hosts_type;
  _hosts_type hosts;




  typedef boost::shared_ptr< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetSyncInfoResponse_

typedef ::multimaster_msgs_fkie::GetSyncInfoResponse_<std::allocator<void> > GetSyncInfoResponse;

typedef boost::shared_ptr< ::multimaster_msgs_fkie::GetSyncInfoResponse > GetSyncInfoResponsePtr;
typedef boost::shared_ptr< ::multimaster_msgs_fkie::GetSyncInfoResponse const> GetSyncInfoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace multimaster_msgs_fkie

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'multimaster_msgs_fkie': ['/home/aarow/ros/vio_swarm_groundstation_ws/src/multimaster_fkie/multimaster_msgs_fkie/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d5261ec56e202860a07fb47b41e1b2a8";
  }

  static const char* value(const ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd5261ec56e202860ULL;
  static const uint64_t static_value2 = 0xa07fb47b41e1b2a8ULL;
};

template<class ContainerAllocator>
struct DataType< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multimaster_msgs_fkie/GetSyncInfoResponse";
  }

  static const char* value(const ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multimaster_msgs_fkie/SyncMasterInfo[] hosts\n\
\n\
================================================================================\n\
MSG: multimaster_msgs_fkie/SyncMasterInfo\n\
string masteruri\n\
string[] nodes\n\
multimaster_msgs_fkie/SyncTopicInfo[] publisher\n\
multimaster_msgs_fkie/SyncTopicInfo[] subscriber\n\
multimaster_msgs_fkie/SyncServiceInfo[] services\n\
================================================================================\n\
MSG: multimaster_msgs_fkie/SyncTopicInfo\n\
string topic\n\
string node\n\
string nodeuri\n\
================================================================================\n\
MSG: multimaster_msgs_fkie/SyncServiceInfo\n\
string service\n\
string serviceuri\n\
string node\n\
string nodeuri\n\
";
  }

  static const char* value(const ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.hosts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetSyncInfoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multimaster_msgs_fkie::GetSyncInfoResponse_<ContainerAllocator>& v)
  {
    s << indent << "hosts[]" << std::endl;
    for (size_t i = 0; i < v.hosts.size(); ++i)
    {
      s << indent << "  hosts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::multimaster_msgs_fkie::SyncMasterInfo_<ContainerAllocator> >::stream(s, indent + "    ", v.hosts[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTIMASTER_MSGS_FKIE_MESSAGE_GETSYNCINFORESPONSE_H