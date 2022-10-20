{
  catkin,
  roslaunch,
  roslint,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xacro";
  pkgFinal = final.noetic.xacro;
  src = srcs.xacro.xacro;

  colconBuildDepends = [
    catkin
    roslint
  ];

  colconRunDepends = [
    roslaunch
  ];

  colconTestDepends = [
    rostest
  ];
}
