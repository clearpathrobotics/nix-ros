{
  catkin,
  message_generation,
  message_runtime,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "map_organizer_msgs";
  pkgFinal = final.noetic.map_organizer_msgs;
  src = srcs.neonavigation_msgs.map_organizer_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    nav_msgs
  ];

  colconRunDepends = [
    message_runtime
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
