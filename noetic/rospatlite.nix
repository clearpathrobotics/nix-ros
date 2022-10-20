{
  catkin,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rospatlite";
  pkgFinal = final.noetic.rospatlite;
  src = srcs.jsk_3rdparty.rospatlite;

  colconBuildDepends = [
    catkin
    rospy
    std_msgs
  ];

  colconRunDepends = [
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
