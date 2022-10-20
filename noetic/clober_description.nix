{
  catkin,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_description";
  pkgFinal = final.noetic.clober_description;
  src = srcs.clober.clober_description;

  colconBuildDepends = [
    catkin
    urdf
    xacro
  ];

  colconRunDepends = [
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
