{
  actionlib_msgs,
  catkin,
  diagnostic_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  python3Packages,
  roscpp,
  rosgraph,
  rospy,
  rospy_tutorials,
  rosservice,
  rostest,
  rostopic,
  rosunit,
  sensor_msgs,
  std_msgs,
  std_srvs,
  stereo_msgs,
  tf2_msgs,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_library";
  pkgFinal = final.noetic.rosbridge_library;
  src = srcs.rosbridge_suite.rosbridge_library;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    python3Packages.bson
    python3Packages.pillow
    python3Packages.setuptools
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    python3Packages.bson
    python3Packages.pillow
    roscpp
    rosgraph
    rospy
    rosservice
    rostopic
    std_msgs
  ];

  colconTestDepends = [
    actionlib_msgs
    diagnostic_msgs
    nav_msgs
    rospy_tutorials
    rostest
    rosunit
    sensor_msgs
    std_srvs
    stereo_msgs
    tf2_msgs
    trajectory_msgs
    visualization_msgs
  ];
}
