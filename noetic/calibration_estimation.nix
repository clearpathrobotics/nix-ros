{
  calibration_msgs,
  catkin,
  python3Packages,
  rospy,
  rostest,
  sensor_msgs,
  urdfdom_py,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "calibration_estimation";
  pkgFinal = final.noetic.calibration_estimation;
  src = srcs.calibration.calibration_estimation;

  colconBuildDepends = [
    calibration_msgs
    catkin
  ];

  colconRunDepends = [
    calibration_msgs
    python3Packages.matplotlib
    python3Packages.pykdl
    python3Packages.scipy
    rospy
    rostest
    sensor_msgs
    urdfdom_py
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
