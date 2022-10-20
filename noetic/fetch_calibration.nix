{
  catkin,
  python3Packages,
  robot_calibration,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_calibration";
  pkgFinal = final.noetic.fetch_calibration;
  src = srcs.fetch_ros.fetch_calibration;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    robot_calibration
  ];

  colconTestDepends = [
  ];
}
