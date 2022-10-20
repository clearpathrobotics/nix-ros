{
  actionlib,
  catkin,
  cob_light,
  cob_msgs,
  cob_script_server,
  diagnostic_msgs,
  diagnostic_updater,
  ifstat-legacy,
  ipmitool,
  ntp,
  python3Packages,
  roscpp,
  rospy,
  rostopic,
  sensor_msgs,
  std_msgs,
  sysstat,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_monitoring";
  pkgFinal = final.noetic.cob_monitoring;
  src = srcs.cob_command_tools.cob_monitoring;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    python3Packages.setuptools
    roscpp
    topic_tools
  ];

  colconRunDepends = [
    actionlib
    cob_light
    cob_msgs
    cob_script_server
    diagnostic_msgs
    diagnostic_updater
    ifstat-legacy
    ipmitool
    ntp
    python3Packages.paramiko
    python3Packages.psutil
    python3Packages.requests
    roscpp
    rospy
    rostopic
    sensor_msgs
    std_msgs
    sysstat
    topic_tools
  ];

  colconTestDepends = [
  ];
}
