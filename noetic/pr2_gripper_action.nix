{
  actionlib,
  actionlib_msgs,
  catkin,
  pr2_controllers_msgs,
  pr2_mechanism_controllers,
  pr2_mechanism_model,
  robot_mechanism_controllers,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_gripper_action";
  pkgFinal = final.noetic.pr2_gripper_action;
  src = srcs.pr2_controllers.pr2_gripper_action;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    pr2_controllers_msgs
    pr2_mechanism_controllers
    pr2_mechanism_model
    robot_mechanism_controllers
    roscpp
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    pr2_controllers_msgs
    pr2_mechanism_controllers
    pr2_mechanism_model
    robot_mechanism_controllers
    roscpp
  ];

  colconTestDepends = [
  ];
}
