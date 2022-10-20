{
  catkin,
  pr2_controller_manager,
  pr2_controllers_msgs,
  roslaunch,
  rostest,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_mannequin_mode";
  pkgFinal = final.noetic.pr2_mannequin_mode;
  src = srcs.pr2_apps.pr2_mannequin_mode;

  colconBuildDepends = [
    catkin
    pr2_controller_manager
    pr2_controllers_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    pr2_controller_manager
    pr2_controllers_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
