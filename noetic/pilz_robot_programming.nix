{
  catkin,
  code_coverage,
  moveit_commander,
  pilz_industrial_motion_planner,
  pilz_industrial_motion_testutils,
  pilz_msgs,
  prbt_hardware_support,
  prbt_moveit_config,
  prbt_pg70_support,
  python3Packages,
  roslint,
  rospy,
  rostest,
  rosunit,
  tf2_geometry_msgs,
  tf2_ros,
  tf_conversions,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_robot_programming";
  pkgFinal = final.noetic.pilz_robot_programming;
  src = srcs.pilz_industrial_motion.pilz_robot_programming;

  colconBuildDepends = [
    catkin
    roslint
    rospy
  ];

  colconRunDepends = [
    moveit_commander
    pilz_industrial_motion_planner
    pilz_msgs
    python3Packages.psutil
    rospy
    tf2_geometry_msgs
    tf2_ros
    tf_conversions
  ];

  colconTestDepends = [
    code_coverage
    pilz_industrial_motion_testutils
    prbt_hardware_support
    prbt_moveit_config
    prbt_pg70_support
    python3Packages.coverage
    python3Packages.docopt
    python3Packages.mock
    rostest
    rosunit
    visualization_msgs
  ];
}
