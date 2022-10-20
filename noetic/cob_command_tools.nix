{
  catkin,
  cob_command_gui,
  cob_dashboard,
  cob_helper_tools,
  cob_interactive_teleop,
  cob_monitoring,
  cob_script_server,
  cob_teleop,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_command_tools";
  pkgFinal = final.noetic.cob_command_tools;
  src = srcs.cob_command_tools.cob_command_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_command_gui
    cob_dashboard
    cob_helper_tools
    cob_interactive_teleop
    cob_monitoring
    cob_script_server
    cob_teleop
  ];

  colconTestDepends = [
  ];
}
