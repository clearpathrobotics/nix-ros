{
  angles,
  catkin,
  cmake_modules,
  geometry_msgs,
  kdl_parser,
  moveit_core,
  moveit_msgs,
  pluginlib,
  roscpp,
  tf_conversions,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_arm_kinematics";
  pkgFinal = final.noetic.pr2_arm_kinematics;
  src = srcs.pr2_kinematics.pr2_arm_kinematics;

  colconBuildDepends = [
    angles
    catkin
    cmake_modules
    geometry_msgs
    kdl_parser
    moveit_core
    moveit_msgs
    pluginlib
    roscpp
    tf_conversions
    urdf
  ];

  colconRunDepends = [
    angles
    geometry_msgs
    kdl_parser
    moveit_core
    moveit_msgs
    pluginlib
    roscpp
    tf_conversions
    urdf
  ];

  colconTestDepends = [
  ];
}
