{
  catkin,
  cv_bridge,
  roscpp,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_vision_utils";
  pkgFinal = final.noetic.cob_vision_utils;
  src = srcs.cob_perception_common.cob_vision_utils;

  colconBuildDepends = [
    catkin
    cv_bridge
    roscpp
    visualization_msgs
  ];

  colconRunDepends = [
    cv_bridge
    roscpp
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
