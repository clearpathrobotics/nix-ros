{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ensenso_description";
  pkgFinal = final.noetic.ensenso_description;
  src = srcs.ensenso_driver.ensenso_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
