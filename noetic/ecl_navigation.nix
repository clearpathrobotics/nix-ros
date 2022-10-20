{
  catkin,
  ecl_mobile_robot,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_navigation";
  pkgFinal = final.noetic.ecl_navigation;
  src = srcs.ecl_navigation.ecl_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ecl_mobile_robot
  ];

  colconTestDepends = [
  ];
}
