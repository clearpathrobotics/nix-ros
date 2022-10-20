{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_description";
  pkgFinal = final.noetic.rm_description;
  src = srcs.rm_description.rm_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
