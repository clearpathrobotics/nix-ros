{
  catkin,
  ros_ign_bridge,
  ros_ign_gazebo_demos,
  ros_ign_image,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_ign";
  pkgFinal = final.noetic.ros_ign;
  src = srcs.ros_ign.ros_ign;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ros_ign_bridge
    ros_ign_gazebo_demos
    ros_ign_image
  ];

  colconTestDepends = [
  ];
}
