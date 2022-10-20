{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  pr2_msgs,
  rospy,
  rostest,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fingertip_pressure";
  pkgFinal = final.noetic.fingertip_pressure;
  src = srcs.pr2_ethercat_drivers.fingertip_pressure;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    rostest
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    pr2_msgs
    rospy
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
