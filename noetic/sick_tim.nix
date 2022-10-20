{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  libusb1,
  robot_state_publisher,
  roscpp,
  roslaunch,
  sensor_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_tim";
  pkgFinal = final.noetic.sick_tim;
  src = srcs.sick_tim.sick_tim;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    libusb1
    roscpp
    roslaunch
    sensor_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    libusb1
    robot_state_publisher
    roscpp
    sensor_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
