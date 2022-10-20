{
  catkin,
  geometry_msgs,
  moveit_msgs,
  moveit_resources_fanuc_moveit_config,
  moveit_ros_planning_interface,
  python3,
  python3Packages,
  rospy,
  rostest,
  sensor_msgs,
  shape_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_commander";
  pkgFinal = final.noetic.moveit_commander;
  src = srcs.moveit.moveit_commander;

  colconBuildDepends = [
    catkin
    python3
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    geometry_msgs
    moveit_msgs
    moveit_ros_planning_interface
    python3
    rospy
    sensor_msgs
    shape_msgs
    tf
  ];

  colconTestDepends = [
    moveit_resources_fanuc_moveit_config
    rostest
  ];
}
