{
  actionlib,
  catkin,
  cob_actions,
  cob_light,
  cob_script_server,
  cob_sound,
  geometry_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_teleop";
  pkgFinal = final.noetic.cob_teleop;
  src = srcs.cob_command_tools.cob_teleop;

  colconBuildDepends = [
    actionlib
    catkin
    cob_actions
    cob_light
    cob_script_server
    cob_sound
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    actionlib
    cob_actions
    cob_light
    cob_script_server
    cob_sound
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
