{
  catkin,
  daemontools,
  nettools,
  roslaunch,
  roslint,
  rosunit,
  util-linux,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_upstart";
  pkgFinal = final.noetic.robot_upstart;
  src = srcs.robot_upstart.robot_upstart;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    daemontools
    nettools
    roslaunch
    util-linux
    xacro
  ];

  colconTestDepends = [
    roslint
    rosunit
  ];
}
