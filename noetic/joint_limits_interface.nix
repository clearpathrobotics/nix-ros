{
  catkin,
  hardware_interface,
  roscpp,
  rostest,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_limits_interface";
  pkgFinal = final.noetic.joint_limits_interface;
  src = srcs.ros_control.joint_limits_interface;

  colconBuildDepends = [
    catkin
    hardware_interface
    roscpp
    urdf
  ];

  colconRunDepends = [
    hardware_interface
    roscpp
    urdf
  ];

  colconTestDepends = [
    rostest
  ];
}
