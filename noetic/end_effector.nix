{
  catkin,
  gtest,
  joint_state_publisher_gui,
  kdl_parser,
  libyamlcpp,
  message_runtime,
  moveit_ros_planning_interface,
  muparser,
  roscpp,
  rosee_msg,
  rospy,
  srdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "end_effector";
  pkgFinal = final.noetic.end_effector;
  src = srcs.end-effector.end_effector;

  colconBuildDepends = [
    catkin
    kdl_parser
    libyamlcpp
    moveit_ros_planning_interface
    muparser
    roscpp
    rosee_msg
    rospy
    srdfdom
  ];

  colconRunDepends = [
    joint_state_publisher_gui
    kdl_parser
    libyamlcpp
    message_runtime
    moveit_ros_planning_interface
    muparser
    roscpp
    rosee_msg
    rospy
    srdfdom
  ];

  colconTestDepends = [
    gtest
  ];
}
