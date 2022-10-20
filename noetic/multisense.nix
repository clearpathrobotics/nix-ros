{
  catkin,
  multisense_bringup,
  multisense_cal_check,
  multisense_description,
  multisense_lib,
  multisense_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multisense";
  pkgFinal = final.noetic.multisense;
  src = srcs.multisense_ros.multisense;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    multisense_bringup
    multisense_cal_check
    multisense_description
    multisense_lib
    multisense_ros
  ];

  colconTestDepends = [
  ];
}
