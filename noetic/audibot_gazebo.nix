{
  audibot_description,
  catkin,
  gazebo_ros,
  gazebo_ros_pkgs,
  robot_state_publisher,
  roscpp,
  rospy,
  rostest,
  rviz,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "audibot_gazebo";
  pkgFinal = final.noetic.audibot_gazebo;
  src = srcs.audibot.audibot_gazebo;

  colconBuildDepends = [
    catkin
    gazebo_ros
    roscpp
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    audibot_description
    gazebo_ros
    gazebo_ros_pkgs
    robot_state_publisher
    roscpp
    rviz
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rospy
    rostest
  ];
}
