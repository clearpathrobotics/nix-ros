{
  catkin,
  multisense_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multisense_cal_check";
  pkgFinal = final.noetic.multisense_cal_check;
  src = srcs.multisense_ros.multisense_cal_check;

  colconBuildDepends = [
    catkin
    multisense_ros
  ];

  colconRunDepends = [
    multisense_ros
  ];

  colconTestDepends = [
  ];
}
