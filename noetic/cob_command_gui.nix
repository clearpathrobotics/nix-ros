{
  catkin,
  cob_msgs,
  cob_script_server,
  python3Packages,
  roslib,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_command_gui";
  pkgFinal = final.noetic.cob_command_gui;
  src = srcs.cob_command_tools.cob_command_gui;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    cob_msgs
    cob_script_server
    python3Packages.pygobject3
    roslib
    rospy
  ];

  colconTestDepends = [
  ];
}
