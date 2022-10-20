{
  boost,
  catkin,
  cpp_common,
  genmsg,
  genpy,
  python3Packages,
  rosbag_storage,
  rosconsole,
  roscpp,
  roscpp_serialization,
  roslib,
  rospy,
  std_srvs,
  topic_tools,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag";
  pkgFinal = final.noetic.rosbag;
  src = srcs.ros_comm.rosbag;

  colconBuildDepends = [
    boost
    catkin
    cpp_common
    python3Packages.pillow
    rosbag_storage
    rosconsole
    roscpp
    roscpp_serialization
    std_srvs
    topic_tools
    xmlrpcpp
  ];

  colconRunDepends = [
    boost
    genmsg
    genpy
    python3Packages.pycryptodomex
    python3Packages.python-gnupg
    python3Packages.rospkg
    rosbag_storage
    rosconsole
    roscpp
    roslib
    rospy
    std_srvs
    topic_tools
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
