{
  catkin,
  message_generation,
  message_runtime,
  moveit_ros_planning_interface,
  moveit_simple_controller_manager,
  robot_state_publisher,
  ros_control,
  ros_controllers,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros";
  pkgFinal = final.noetic.webots_ros;
  src = srcs.webots_ros.webots_ros;

  colconBuildDepends = [
    catkin
    message_generation
    moveit_ros_planning_interface
    moveit_simple_controller_manager
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    message_runtime
    moveit_ros_planning_interface
    moveit_simple_controller_manager
    robot_state_publisher
    ros_control
    ros_controllers
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
