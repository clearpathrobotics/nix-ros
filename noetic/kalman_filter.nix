{
  catkin,
  roslint,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kalman_filter";
  pkgFinal = final.noetic.kalman_filter;
  src = srcs.wu_ros_tools.kalman_filter;

  colconBuildDepends = [
    catkin
    rospy
  ];

  colconRunDepends = [
    rospy
  ];

  colconTestDepends = [
    roslint
  ];
}
