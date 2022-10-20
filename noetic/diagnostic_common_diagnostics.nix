{
  catkin,
  diagnostic_updater,
  hddtemp,
  lm_sensors,
  python3Packages,
  rospy,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostic_common_diagnostics";
  pkgFinal = final.noetic.diagnostic_common_diagnostics;
  src = srcs.diagnostics.diagnostic_common_diagnostics;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    rospy
    rostest
  ];

  colconRunDepends = [
    diagnostic_updater
    hddtemp
    lm_sensors
    python3Packages.psutil
    rospy
    tf
  ];

  colconTestDepends = [
  ];
}
