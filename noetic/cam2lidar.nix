{
  catkin,
  cv_bridge,
  message_generation,
  message_runtime,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cam2lidar";
  pkgFinal = final.noetic.cam2lidar;
  src = srcs.cam2lidar.cam2lidar;

  colconBuildDepends = [
    catkin
    cv_bridge
    message_generation
    rospy
  ];

  colconRunDepends = [
    cv_bridge
    message_runtime
    rospy
  ];

  colconTestDepends = [
  ];
}
