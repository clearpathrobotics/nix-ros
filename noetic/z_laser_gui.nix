{
  catkin,
  geometry_msgs,
  roscpp,
  rospy,
  std_msgs,
  z_laser_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "z_laser_gui";
  pkgFinal = final.noetic.z_laser_gui;
  src = srcs.z_laser_projector.z_laser_gui;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    rospy
    std_msgs
    z_laser_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    rospy
    std_msgs
    z_laser_msgs
  ];

  colconTestDepends = [
  ];
}
