{
  actionlib,
  arbotix_msgs,
  catkin,
  control_msgs,
  diagnostic_msgs,
  geometry_msgs,
  nav_msgs,
  python3Packages,
  rospy,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "arbotix_python";
  pkgFinal = final.noetic.arbotix_python;
  src = srcs.arbotix.arbotix_python;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib
    arbotix_msgs
    control_msgs
    diagnostic_msgs
    geometry_msgs
    nav_msgs
    python3Packages.pyserial
    rospy
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
