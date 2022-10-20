{
  angles,
  catkin,
  cv_bridge,
  diagnostic_msgs,
  diagnostic_updater,
  gazebo_msgs,
  gazebo_plugins,
  gazebo_ros,
  geometry_msgs,
  image_transport,
  message_generation,
  message_runtime,
  nav_msgs,
  orocos-kdl,
  polled_camera,
  pr2_controller_manager,
  pr2_hardware_interface,
  pr2_mechanism_model,
  pr2_msgs,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gazebo_plugins";
  pkgFinal = final.noetic.pr2_gazebo_plugins;
  src = srcs.pr2_simulator.pr2_gazebo_plugins;

  colconBuildDepends = [
    angles
    catkin
    cv_bridge
    diagnostic_msgs
    diagnostic_updater
    gazebo_msgs
    gazebo_plugins
    geometry_msgs
    image_transport
    message_generation
    message_runtime
    nav_msgs
    orocos-kdl
    polled_camera
    pr2_controller_manager
    pr2_hardware_interface
    pr2_mechanism_model
    pr2_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf
    urdf
  ];

  colconRunDepends = [
    angles
    cv_bridge
    diagnostic_msgs
    diagnostic_updater
    gazebo_msgs
    gazebo_plugins
    gazebo_ros
    geometry_msgs
    image_transport
    message_generation
    message_runtime
    nav_msgs
    orocos-kdl
    polled_camera
    pr2_controller_manager
    pr2_hardware_interface
    pr2_mechanism_model
    pr2_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
    urdf
  ];

  colconTestDepends = [
  ];
}
