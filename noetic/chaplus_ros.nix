{
  catkin,
  python3Packages,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "chaplus_ros";
  pkgFinal = final.noetic.chaplus_ros;
  src = srcs.jsk_3rdparty.chaplus_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.requests
    rospy
  ];

  colconTestDepends = [
  ];
}
