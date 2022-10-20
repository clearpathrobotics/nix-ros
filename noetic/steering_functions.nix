{
  catkin,
  cmake_modules,
  costmap_2d,
  eigen,
  geometry_msgs,
  nav_msgs,
  roscpp,
  roslib,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "steering_functions";
  pkgFinal = final.noetic.steering_functions;
  src = srcs.steering_functions.steering_functions;

  colconBuildDepends = [
    catkin
    cmake_modules
    costmap_2d
    eigen
    geometry_msgs
    nav_msgs
    roscpp
    roslib
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    costmap_2d
    eigen
    geometry_msgs
    nav_msgs
    roscpp
    roslib
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
