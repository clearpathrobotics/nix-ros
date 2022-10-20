{
  catkin,
  marti_introspection_msgs,
  rosgraph,
  rospy,
  rostopic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_cli_tools";
  pkgFinal = final.noetic.swri_cli_tools;
  src = srcs.marti_common.swri_cli_tools;

  colconBuildDepends = [
    catkin
    marti_introspection_msgs
  ];

  colconRunDepends = [
    marti_introspection_msgs
    rosgraph
    rospy
    rostopic
  ];

  colconTestDepends = [
  ];
}
