{
  catkin,
  class_loader,
  eigen,
  geometric_shapes,
  interactive_markers,
  moveit_ros_perception,
  moveit_ros_planning_interface,
  moveit_ros_robot_interaction,
  moveit_ros_warehouse,
  object_recognition_msgs,
  ogre1_9,
  pkg-config,
  pluginlib,
  qt5,
  rosconsole,
  roscpp,
  rospy,
  rostest,
  rviz,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_visualization";
  pkgFinal = final.noetic.moveit_ros_visualization;
  src = srcs.moveit.moveit_ros_visualization;

  colconBuildDepends = [
    catkin
    class_loader
    eigen
    geometric_shapes
    interactive_markers
    moveit_ros_perception
    moveit_ros_planning_interface
    moveit_ros_robot_interaction
    moveit_ros_warehouse
    object_recognition_msgs
    ogre1_9
    pkg-config
    pluginlib
    qt5.qtbase
    rosconsole
    roscpp
    rospy
    rviz
    tf2_eigen
  ];

  colconRunDepends = [
    geometric_shapes
    interactive_markers
    moveit_ros_perception
    moveit_ros_planning_interface
    moveit_ros_robot_interaction
    moveit_ros_warehouse
    object_recognition_msgs
    pluginlib
    rosconsole
    roscpp
    rospy
    rviz
    tf2_eigen
  ];

  colconTestDepends = [
    rostest
  ];
}
