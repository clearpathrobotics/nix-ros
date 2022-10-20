{
  angles,
  catkin,
  cmake_modules,
  hardware_interface,
  kdl_parser,
  pluginlib,
  pr2_hardware_interface,
  roscpp,
  rostest,
  rosunit,
  urdf,
  urdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_mechanism_model";
  pkgFinal = final.noetic.pr2_mechanism_model;
  src = srcs.pr2_mechanism.pr2_mechanism_model;

  colconBuildDepends = [
    angles
    catkin
    cmake_modules
    hardware_interface
    kdl_parser
    pluginlib
    pr2_hardware_interface
    roscpp
    rostest
    rosunit
    urdf
    urdfdom
  ];

  colconRunDepends = [
    angles
    hardware_interface
    kdl_parser
    pluginlib
    pr2_hardware_interface
    roscpp
    urdf
    urdfdom
  ];

  colconTestDepends = [
  ];
}
