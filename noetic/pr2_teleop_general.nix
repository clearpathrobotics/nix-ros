{
  actionlib,
  actionlib_msgs,
  angles,
  catkin,
  geometry_msgs,
  moveit_msgs,
  polled_camera,
  pr2_arm_kinematics,
  pr2_common_action_msgs,
  pr2_controller_manager,
  pr2_controllers_msgs,
  pr2_mannequin_mode,
  pr2_mechanism_msgs,
  pr2_msgs,
  pr2_tuck_arms_action,
  roscpp,
  roslaunch,
  rostest,
  sensor_msgs,
  tf,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_teleop_general";
  pkgFinal = final.noetic.pr2_teleop_general;
  src = srcs.pr2_apps.pr2_teleop_general;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    angles
    catkin
    geometry_msgs
    moveit_msgs
    polled_camera
    pr2_common_action_msgs
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_mechanism_msgs
    pr2_msgs
    roscpp
    sensor_msgs
    tf
    urdf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    angles
    geometry_msgs
    moveit_msgs
    polled_camera
    pr2_arm_kinematics
    pr2_common_action_msgs
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_mannequin_mode
    pr2_mechanism_msgs
    pr2_msgs
    pr2_tuck_arms_action
    roscpp
    sensor_msgs
    tf
    urdf
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
