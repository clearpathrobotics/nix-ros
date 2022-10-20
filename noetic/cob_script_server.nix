{
  actionlib,
  actionlib_msgs,
  catkin,
  cob_actions,
  cob_light,
  cob_mimic,
  cob_sound,
  control_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  move_base_msgs,
  python3Packages,
  rospy,
  rostest,
  std_msgs,
  std_srvs,
  tf,
  trajectory_msgs,
  urdfdom_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_script_server";
  pkgFinal = final.noetic.cob_script_server;
  src = srcs.cob_command_tools.cob_script_server;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
    python3Packages.setuptools
    rostest
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    cob_actions
    cob_light
    cob_mimic
    cob_sound
    control_msgs
    geometry_msgs
    message_runtime
    move_base_msgs
    python3Packages.ipython
    python3Packages.pygraphviz
    python3Packages.six
    rospy
    rostest
    std_msgs
    std_srvs
    tf
    trajectory_msgs
    urdfdom_py
  ];

  colconTestDepends = [
  ];
}
