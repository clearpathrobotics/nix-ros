{
  actionlib,
  actionlib_msgs,
  boost,
  catkin,
  cob_frame_tracker,
  cob_script_server,
  cob_srvs,
  cob_twist_controller,
  geometry_msgs,
  message_generation,
  message_runtime,
  python3Packages,
  robot_state_publisher,
  roscpp,
  roslint,
  rospy,
  rviz,
  std_msgs,
  std_srvs,
  tf,
  topic_tools,
  visualization_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_cartesian_controller";
  pkgFinal = final.noetic.cob_cartesian_controller;
  src = srcs.cob_control.cob_cartesian_controller;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    boost
    catkin
    cob_srvs
    geometry_msgs
    message_generation
    python3Packages.setuptools
    roscpp
    roslint
    std_msgs
    std_srvs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    boost
    cob_frame_tracker
    cob_script_server
    cob_srvs
    cob_twist_controller
    geometry_msgs
    message_runtime
    robot_state_publisher
    roscpp
    rospy
    rviz
    std_msgs
    std_srvs
    tf
    topic_tools
    visualization_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
