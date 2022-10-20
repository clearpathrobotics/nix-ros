{
  catkin,
  dynamic_reconfigure,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ddynamic_reconfigure_python";
  pkgFinal = final.noetic.ddynamic_reconfigure_python;
  src = srcs.ddynamic_reconfigure_python.ddynamic_reconfigure_python;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    rospy
  ];

  colconRunDepends = [
    dynamic_reconfigure
    rospy
  ];

  colconTestDepends = [
  ];
}
