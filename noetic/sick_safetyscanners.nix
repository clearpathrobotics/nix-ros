{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sick_safetyscanners";
  pkgFinal = final.noetic.sick_safetyscanners;
  src = srcs.sick_safetyscanners.sick_safetyscanners;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    message_generation
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
