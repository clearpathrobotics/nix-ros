{
  catkin,
  cmake_modules,
  geometry_msgs,
  libyamlcpp,
  roscpp,
  sensor_msgs,
  std_srvs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_workbench_operators";
  pkgFinal = final.noetic.dynamixel_workbench_operators;
  src = srcs.dynamixel-workbench.dynamixel_workbench_operators;

  colconBuildDepends = [
    catkin
    cmake_modules
    geometry_msgs
    libyamlcpp
    roscpp
    sensor_msgs
    std_srvs
    trajectory_msgs
  ];

  colconRunDepends = [
    cmake_modules
    geometry_msgs
    libyamlcpp
    roscpp
    sensor_msgs
    std_srvs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
