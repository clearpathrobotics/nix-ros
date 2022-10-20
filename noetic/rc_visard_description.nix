{
  catkin,
  roslaunch,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_visard_description";
  pkgFinal = final.noetic.rc_visard_description;
  src = srcs.rc_visard.rc_visard_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
    roslaunch
  ];
}
