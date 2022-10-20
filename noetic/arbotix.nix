{
  arbotix_controllers,
  arbotix_firmware,
  arbotix_msgs,
  arbotix_python,
  arbotix_sensors,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "arbotix";
  pkgFinal = final.noetic.arbotix;
  src = srcs.arbotix.arbotix;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    arbotix_controllers
    arbotix_firmware
    arbotix_msgs
    arbotix_python
    arbotix_sensors
  ];

  colconTestDepends = [
  ];
}
