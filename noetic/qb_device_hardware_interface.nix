{
  catkin,
  control_msgs,
  hardware_interface,
  joint_limits_interface,
  qb_device_msgs,
  qb_device_srvs,
  roscpp,
  rostest,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device_hardware_interface";
  pkgFinal = final.noetic.qb_device_hardware_interface;
  src = srcs.qb_device.qb_device_hardware_interface;

  colconBuildDepends = [
    catkin
    control_msgs
    hardware_interface
    joint_limits_interface
    qb_device_msgs
    qb_device_srvs
    roscpp
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    control_msgs
    hardware_interface
    joint_limits_interface
    qb_device_msgs
    qb_device_srvs
    roscpp
    transmission_interface
    urdf
  ];

  colconTestDepends = [
    rostest
  ];
}
