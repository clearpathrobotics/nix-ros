{
  actionlib,
  actionlib_msgs,
  boost,
  catkin,
  curl,
  diagnostic_msgs,
  fetch_auto_dock_msgs,
  fetch_driver_msgs,
  libyamlcpp,
  mk,
  nav_msgs,
  power_msgs,
  python3,
  robot_calibration_msgs,
  robot_controllers,
  robot_controllers_interface,
  rosconsole,
  roscpp,
  roscpp_serialization,
  rospack,
  rostime,
  sensor_msgs,
  urdf,
  urdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_drivers";
  pkgFinal = final.noetic.fetch_drivers;
  src = srcs.fetch_robots.fetch_drivers;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    boost
    catkin
    curl
    diagnostic_msgs
    fetch_auto_dock_msgs
    fetch_driver_msgs
    libyamlcpp
    mk
    nav_msgs
    power_msgs
    python3
    robot_calibration_msgs
    robot_controllers
    robot_controllers_interface
    rosconsole
    roscpp
    roscpp_serialization
    rospack
    rostime
    sensor_msgs
    urdf
    urdfdom
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    boost
    curl
    diagnostic_msgs
    fetch_auto_dock_msgs
    fetch_driver_msgs
    libyamlcpp
    nav_msgs
    power_msgs
    python3
    robot_calibration_msgs
    robot_controllers
    robot_controllers_interface
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    sensor_msgs
    urdf
    urdfdom
  ];

  colconTestDepends = [
  ];
}
