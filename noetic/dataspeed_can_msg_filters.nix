{
  can_msgs,
  catkin,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_can_msg_filters";
  pkgFinal = final.noetic.dataspeed_can_msg_filters;
  src = srcs.dataspeed_can.dataspeed_can_msg_filters;

  colconBuildDepends = [
    can_msgs
    catkin
    roscpp
  ];

  colconRunDepends = [
    can_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
