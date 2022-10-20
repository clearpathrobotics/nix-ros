{
  catkin,
  sensor_msgs,
  std_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rokubimini_description";
  pkgFinal = final.noetic.rokubimini_description;
  src = srcs.bota_driver.rokubimini_description;

  colconBuildDepends = [
    catkin
    sensor_msgs
    std_msgs
    xacro
  ];

  colconRunDepends = [
    sensor_msgs
    std_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
