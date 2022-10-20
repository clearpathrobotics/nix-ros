{
  catkin,
  cmake_modules,
  geometry_msgs,
  mavros,
  mavros_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,
  tf2_eigen,
  urdf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mavros_extras";
  pkgFinal = final.noetic.mavros_extras;
  src = srcs.mavros.mavros_extras;

  colconBuildDepends = [
    catkin
    cmake_modules
    geometry_msgs
    mavros
    mavros_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf2_eigen
    urdf
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    mavros
    mavros_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
    tf2_eigen
    urdf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
