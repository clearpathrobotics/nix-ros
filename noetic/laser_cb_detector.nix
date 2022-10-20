{
  actionlib,
  actionlib_msgs,
  catkin,
  cv_bridge,
  image_cb_detector,
  message_filters,
  roscpp,
  settlerlib,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_cb_detector";
  pkgFinal = final.noetic.laser_cb_detector;
  src = srcs.calibration.laser_cb_detector;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    cv_bridge
    image_cb_detector
    message_filters
    roscpp
    settlerlib
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    cv_bridge
    image_cb_detector
    message_filters
    roscpp
    settlerlib
    std_msgs
  ];

  colconTestDepends = [
  ];
}
