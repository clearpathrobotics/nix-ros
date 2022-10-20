{
  catkin,
  rospy,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_py";
  pkgFinal = final.noetic.tf2_py;
  src = srcs.geometry2.tf2_py;

  colconBuildDepends = [
    catkin
    rospy
    tf2
  ];

  colconRunDepends = [
    rospy
    tf2
  ];

  colconTestDepends = [
  ];
}
