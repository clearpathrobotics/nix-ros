{
  catkin,
  tf2,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_tools";
  pkgFinal = final.noetic.tf2_tools;
  src = srcs.geometry2.tf2_tools;

  colconBuildDepends = [
    catkin
    tf2
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    tf2
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
