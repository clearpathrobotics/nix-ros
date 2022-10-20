{
  catkin,
  cmake_modules,
  eigen,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_mecanum_controller";
  pkgFinal = final.noetic.cob_mecanum_controller;
  src = srcs.cob_control.cob_mecanum_controller;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    cmake_modules
    eigen
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
