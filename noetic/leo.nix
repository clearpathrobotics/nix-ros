{
  catkin,
  leo_description,
  leo_msgs,
  leo_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo";
  pkgFinal = final.noetic.leo;
  src = srcs.leo_common.leo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    leo_description
    leo_msgs
    leo_teleop
  ];

  colconTestDepends = [
  ];
}
