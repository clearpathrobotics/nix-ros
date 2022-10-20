{
  catkin,
  message_filters,
  ros,
  rosbag,
  rosconsole,
  roscpp,
  rosgraph,
  rosgraph_msgs,
  roslaunch,
  roslisp,
  rosmaster,
  rosmsg,
  rosnode,
  rosout,
  rosparam,
  rospy,
  rosservice,
  rostest,
  rostopic,
  roswtf,
  std_srvs,
  topic_tools,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_comm";
  pkgFinal = final.noetic.ros_comm;
  src = srcs.ros_comm.ros_comm;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    message_filters
    ros
    rosbag
    rosconsole
    roscpp
    rosgraph
    rosgraph_msgs
    roslaunch
    roslisp
    rosmaster
    rosmsg
    rosnode
    rosout
    rosparam
    rospy
    rosservice
    rostest
    rostopic
    roswtf
    std_srvs
    topic_tools
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
