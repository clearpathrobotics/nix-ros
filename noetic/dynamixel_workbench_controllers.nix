{
  catkin,
  cmake_modules,
  dynamixel_workbench_msgs,
  dynamixel_workbench_toolbox,
  eigen,
  geometry_msgs,
  libyamlcpp,
  roscpp,
  sensor_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_workbench_controllers";
  pkgFinal = final.noetic.dynamixel_workbench_controllers;
  src = srcs.dynamixel-workbench.dynamixel_workbench_controllers;

  colconBuildDepends = [
    catkin
    cmake_modules
    dynamixel_workbench_msgs
    dynamixel_workbench_toolbox
    eigen
    geometry_msgs
    libyamlcpp
    roscpp
    sensor_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    cmake_modules
    dynamixel_workbench_msgs
    dynamixel_workbench_toolbox
    eigen
    geometry_msgs
    libyamlcpp
    roscpp
    sensor_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
