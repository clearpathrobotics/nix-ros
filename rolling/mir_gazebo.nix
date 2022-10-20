{
  controller_manager,
  gazebo_ros,
  joint_state_publisher,
  mir_description,
  mir_driver,
  robot_localization,
  robot_state_publisher,
  rqt_robot_steering,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_gazebo";
  pkgFinal = final.rolling.mir_gazebo;
  src = srcs.mir_robot.mir_gazebo;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    controller_manager
    gazebo_ros
    joint_state_publisher
    mir_description
    mir_driver
    robot_localization
    robot_state_publisher
    rqt_robot_steering
    topic_tools
  ];

  colconTestDepends = [
  ];
}
