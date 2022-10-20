{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multisense_description";
  pkgFinal = final.noetic.multisense_description;
  src = srcs.multisense_ros.multisense_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
