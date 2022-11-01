{
  catkin,
  pr2_controllers_msgs,
  pr2_msgs,
  roseus,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_calibration";
  pkgFinal = final.noetic.jsk_calibration;
  src = srcs.jsk_control.jsk_calibration;

  colconBuildDepends = [
    catkin
    pr2_controllers_msgs
    pr2_msgs
    roseus
  ];

  colconRunDepends = [
    pr2_controllers_msgs
    pr2_msgs
    roseus
  ];

  colconTestDepends = [
  ];
}
