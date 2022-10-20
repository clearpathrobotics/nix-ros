{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_msgs";
  pkgFinal = final.noetic.tf2_msgs;
  src = srcs.geometry2.tf2_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_generation
  ];

  colconTestDepends = [
  ];
}
