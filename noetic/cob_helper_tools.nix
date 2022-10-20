{
  catkin,
  cob_msgs,
  cob_script_server,
  diagnostic_msgs,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  python3Packages,
  rospy,
  std_srvs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_helper_tools";
  pkgFinal = final.noetic.cob_helper_tools;
  src = srcs.cob_command_tools.cob_helper_tools;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    message_generation
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cob_msgs
    cob_script_server
    diagnostic_msgs
    dynamic_reconfigure
    message_runtime
    rospy
    std_srvs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
