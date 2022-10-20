{
  catkin,
  gtest,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "schunk_description";
  pkgFinal = final.noetic.schunk_description;
  src = srcs.schunk_modular_robotics.schunk_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
    gtest
  ];
}
