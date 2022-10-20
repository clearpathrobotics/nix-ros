{
  catkin,
  led_msgs,
  message_generation,
  ros_environment,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ws281x";
  pkgFinal = final.noetic.ws281x;
  src = srcs.ros_led.ws281x;

  colconBuildDepends = [
    catkin
    led_msgs
    message_generation
    ros_environment
    roscpp
  ];

  colconRunDepends = [
    led_msgs
    message_generation
    roscpp
  ];

  colconTestDepends = [
  ];
}
