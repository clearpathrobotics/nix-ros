{
  catkin,
  controller_manager,
  fake_localization,
  gazebo_ros,
  joint_state_publisher,
  mir_description,
  mir_driver,
  robot_localization,
  robot_state_publisher,
  roslaunch,
  rostopic,
  rqt_robot_steering,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_gazebo";
  pkgFinal = final.noetic.mir_gazebo;
  src = srcs.mir_robot.mir_gazebo;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    controller_manager
    fake_localization
    gazebo_ros
    joint_state_publisher
    mir_description
    mir_driver
    robot_localization
    robot_state_publisher
    rostopic
    rqt_robot_steering
    topic_tools
  ];

  colconTestDepends = [
  ];
}
