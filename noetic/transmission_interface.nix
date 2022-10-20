{
  catkin,
  cmake_modules,
  hardware_interface,
  pluginlib,
  resource_retriever,
  roscpp,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "transmission_interface";
  pkgFinal = final.noetic.transmission_interface;
  src = srcs.ros_control.transmission_interface;

  colconBuildDepends = [
    catkin
    cmake_modules
    hardware_interface
    pluginlib
    roscpp
    tinyxml
  ];

  colconRunDepends = [
    hardware_interface
    pluginlib
    roscpp
    tinyxml
  ];

  colconTestDepends = [
    resource_retriever
  ];
}
