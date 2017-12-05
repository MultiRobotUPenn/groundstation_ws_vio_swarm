// Generated by gencpp from file mav_manager/Vec4Request.msg
// DO NOT EDIT!


#ifndef MAV_MANAGER_MESSAGE_VEC4REQUEST_H
#define MAV_MANAGER_MESSAGE_VEC4REQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mav_manager
{
template <class ContainerAllocator>
struct Vec4Request_
{
  typedef Vec4Request_<ContainerAllocator> Type;

  Vec4Request_()
    : goal()  {
      goal.assign(0.0);
  }
  Vec4Request_(const ContainerAllocator& _alloc)
    : goal()  {
  (void)_alloc;
      goal.assign(0.0);
  }



   typedef boost::array<float, 4>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::mav_manager::Vec4Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mav_manager::Vec4Request_<ContainerAllocator> const> ConstPtr;

}; // struct Vec4Request_

typedef ::mav_manager::Vec4Request_<std::allocator<void> > Vec4Request;

typedef boost::shared_ptr< ::mav_manager::Vec4Request > Vec4RequestPtr;
typedef boost::shared_ptr< ::mav_manager::Vec4Request const> Vec4RequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mav_manager::Vec4Request_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mav_manager::Vec4Request_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mav_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mav_manager::Vec4Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mav_manager::Vec4Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mav_manager::Vec4Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mav_manager::Vec4Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mav_manager::Vec4Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mav_manager::Vec4Request_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mav_manager::Vec4Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a0a3ab4c2f104639ad85ee4436ff461d";
  }

  static const char* value(const ::mav_manager::Vec4Request_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa0a3ab4c2f104639ULL;
  static const uint64_t static_value2 = 0xad85ee4436ff461dULL;
};

template<class ContainerAllocator>
struct DataType< ::mav_manager::Vec4Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mav_manager/Vec4Request";
  }

  static const char* value(const ::mav_manager::Vec4Request_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mav_manager::Vec4Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[4] goal\n\
";
  }

  static const char* value(const ::mav_manager::Vec4Request_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mav_manager::Vec4Request_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vec4Request_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mav_manager::Vec4Request_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mav_manager::Vec4Request_<ContainerAllocator>& v)
  {
    s << indent << "goal[]" << std::endl;
    for (size_t i = 0; i < v.goal.size(); ++i)
    {
      s << indent << "  goal[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.goal[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAV_MANAGER_MESSAGE_VEC4REQUEST_H