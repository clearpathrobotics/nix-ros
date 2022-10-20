{
  catkin,
  moveit_core,
  moveit_ros_planning_interface,
  roscpp,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pincher_arm_moveit_demos";
  pkgFinal = final.noetic.pincher_arm_moveit_demos;
  src = srcs.pincher_arm.pincher_arm_moveit_demos;

  colconBuildDepends = [
    catkin
    moveit_core
    moveit_ros_planning_interface
    roscpp
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    moveit_core
    moveit_ros_planning_interface
    roscpp
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
