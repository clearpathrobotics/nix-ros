{
  catkin,
  lgsvl_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_external_msgs";
  pkgFinal = final.noetic.autoware_external_msgs;
  src = srcs.autoware_msgs.autoware_external_msgs;

  colconBuildDepends = [
    catkin
    lgsvl_msgs
  ];

  colconRunDepends = [
    lgsvl_msgs
  ];

  colconTestDepends = [
  ];
}
