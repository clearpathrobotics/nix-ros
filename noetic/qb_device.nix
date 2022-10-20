{
  catkin,
  qb_device_bringup,
  qb_device_control,
  qb_device_description,
  qb_device_driver,
  qb_device_gazebo,
  qb_device_hardware_interface,
  qb_device_msgs,
  qb_device_srvs,
  qb_device_utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "qb_device";
  pkgFinal = final.noetic.qb_device;
  src = srcs.qb_device.qb_device;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    qb_device_bringup
    qb_device_control
    qb_device_description
    qb_device_driver
    qb_device_gazebo
    qb_device_hardware_interface
    qb_device_msgs
    qb_device_srvs
    qb_device_utils
  ];

  colconTestDepends = [
  ];
}
