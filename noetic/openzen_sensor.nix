{
  catkin,
  roscpp,
  roslaunch,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "openzen_sensor";
  pkgFinal = final.noetic.openzen_sensor;
  src = srcs.openzen_sensor.openzen_sensor;

  colconBuildDepends = [
    catkin
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    topic_tools
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
