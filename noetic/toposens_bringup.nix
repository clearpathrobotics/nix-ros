{
  catkin,
  joint_state_publisher,
  robot_state_publisher,
  rqt_gui,
  rqt_reconfigure,
  rviz,
  socketcan_bridge,
  toposens_description,
  toposens_driver,
  toposens_echo_driver,
  toposens_markers,
  toposens_pointcloud,
  turtlebot3_bringup,
  turtlebot3_teleop,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_bringup";
  pkgFinal = final.noetic.toposens_bringup;
  src = srcs.toposens.toposens_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    robot_state_publisher
    rqt_gui
    rqt_reconfigure
    rviz
    socketcan_bridge
    toposens_description
    toposens_driver
    toposens_echo_driver
    toposens_markers
    toposens_pointcloud
    turtlebot3_bringup
    turtlebot3_teleop
    xacro
  ];

  colconTestDepends = [
  ];
}
