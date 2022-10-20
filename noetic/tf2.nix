{
  catkin,
  console-bridge,
  geometry_msgs,
  rostime,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2";
  pkgFinal = final.noetic.tf2;
  src = srcs.geometry2.tf2;

  colconBuildDepends = [
    catkin
    console-bridge
    geometry_msgs
    rostime
    tf2_msgs
  ];

  colconRunDepends = [
    console-bridge
    geometry_msgs
    rostime
    tf2_msgs
  ];

  colconTestDepends = [
  ];
}
