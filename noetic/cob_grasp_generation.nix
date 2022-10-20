{
  actionlib,
  actionlib_msgs,
  catkin,
  cob_description,
  cob_manipulation_msgs,
  geometry_msgs,
  moveit_msgs,
  python3Packages,
  robot_state_publisher,
  roslib,
  rospy,
  rviz,
  schunk_description,
  sensor_msgs,
  std_msgs,
  tf,
  tf2_ros,
  trajectory_msgs,
  visualization_msgs,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_grasp_generation";
  pkgFinal = final.noetic.cob_grasp_generation;
  src = srcs.cob_manipulation.cob_grasp_generation;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    cob_description
    cob_manipulation_msgs
    geometry_msgs
    moveit_msgs
    python3Packages.scipy
    python3Packages.six
    robot_state_publisher
    roslib
    rospy
    rviz
    schunk_description
    sensor_msgs
    std_msgs
    tf
    tf2_ros
    trajectory_msgs
    visualization_msgs
    xacro
  ];

  colconTestDepends = [
  ];
}
