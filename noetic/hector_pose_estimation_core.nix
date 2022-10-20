{
  catkin,
  cmake_modules,
  eigen,
  geographic_msgs,
  geometry_msgs,
  nav_msgs,
  rosconsole,
  roscpp,
  rostime,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_pose_estimation_core";
  pkgFinal = final.noetic.hector_pose_estimation_core;
  src = srcs.hector_localization.hector_pose_estimation_core;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    geographic_msgs
    geometry_msgs
    nav_msgs
    rosconsole
    roscpp
    rostime
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    eigen
    geographic_msgs
    geometry_msgs
    nav_msgs
    rosconsole
    roscpp
    rostime
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
