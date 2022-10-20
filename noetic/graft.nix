{
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  rosconsole,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "graft";
  pkgFinal = final.noetic.graft;
  src = srcs.graft.graft;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    geometry_msgs
    message_generation
    nav_msgs
    rosconsole
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    message_runtime
    nav_msgs
    rosconsole
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
