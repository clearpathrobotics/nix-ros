{
  catkin,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audibot_description";
  pkgFinal = final.noetic.audibot_description;
  src = srcs.audibot.audibot_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
