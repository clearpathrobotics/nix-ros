{
  catkin,
  interval_intersection,
  joint_states_settler,
  laser_cb_detector,
  monocam_settler,
  urdfdom_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "calibration_launch";
  pkgFinal = final.noetic.calibration_launch;
  src = srcs.calibration.calibration_launch;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    interval_intersection
    joint_states_settler
    laser_cb_detector
    monocam_settler
    urdfdom_py
  ];

  colconTestDepends = [
  ];
}
