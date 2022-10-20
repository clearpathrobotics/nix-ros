{
  catkin,
  multisense_description,
  multisense_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multisense_bringup";
  pkgFinal = final.noetic.multisense_bringup;
  src = srcs.multisense_ros.multisense_bringup;

  colconBuildDepends = [
    catkin
    multisense_description
    multisense_ros
  ];

  colconRunDepends = [
    multisense_description
    multisense_ros
  ];

  colconTestDepends = [
  ];
}
