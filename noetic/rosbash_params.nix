{
  catkin,
  rosbash,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbash_params";
  pkgFinal = final.noetic.rosbash_params;
  src = srcs.rosbash_params.rosbash_params;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosbash
    rospy
  ];

  colconTestDepends = [
  ];
}
