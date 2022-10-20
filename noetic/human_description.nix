{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "human_description";
  pkgFinal = final.noetic.human_description;
  src = srcs.human_description.human_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
