{
  catkin,
  roscpp,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_sdk";
  pkgFinal = final.noetic.dynamixel_sdk;
  src = srcs.dynamixel_sdk.dynamixel_sdk;

  colconBuildDepends = [
    catkin
    roscpp
    rospy
  ];

  colconRunDepends = [
    roscpp
    rospy
  ];

  colconTestDepends = [
  ];
}
