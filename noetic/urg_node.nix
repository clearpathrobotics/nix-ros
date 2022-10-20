{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  laser_proc,
  message_generation,
  message_runtime,
  nodelet,
  rosconsole,
  roscpp,
  roslaunch,
  roslint,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  urg_c,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urg_node";
  pkgFinal = final.noetic.urg_node;
  src = srcs.urg_node.urg_node;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    laser_proc
    message_generation
    nodelet
    rosconsole
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    urg_c
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    laser_proc
    message_generation
    message_runtime
    nodelet
    rosconsole
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    urg_c
    xacro
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
