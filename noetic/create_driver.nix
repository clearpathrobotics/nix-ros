{
  catkin,
  create_msgs,
  diagnostic_msgs,
  diagnostic_updater,
  geometry_msgs,
  libcreate,
  nav_msgs,
  roscpp,
  roslint,
  sensor_msgs,
  std_msgs,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "create_driver";
  pkgFinal = final.noetic.create_driver;
  src = srcs.create_robot.create_driver;

  colconBuildDepends = [
    catkin
    create_msgs
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    libcreate
    nav_msgs
    roscpp
    roslint
    sensor_msgs
    std_msgs
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    create_msgs
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    libcreate
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
