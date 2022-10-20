{
  catkin,
  geometry_msgs,
  roscpp,
  rospy,
  std_msgs,
  tf,
  visualization_msgs,
  z_laser_msgs,
  z_laser_zlp1,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "z_laser_viz";
  pkgFinal = final.noetic.z_laser_viz;
  src = srcs.z_laser_projector.z_laser_viz;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    rospy
    std_msgs
    tf
    visualization_msgs
    z_laser_msgs
    z_laser_zlp1
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    rospy
    std_msgs
    tf
    visualization_msgs
    z_laser_msgs
    z_laser_zlp1
  ];

  colconTestDepends = [
  ];
}
