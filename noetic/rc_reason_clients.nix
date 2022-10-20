{
  catkin,
  ddynamic_reconfigure_python,
  message_runtime,
  python3Packages,
  rc_reason_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_reason_clients";
  pkgFinal = final.noetic.rc_reason_clients;
  src = srcs.rc_reason_clients.rc_reason_clients;

  colconBuildDepends = [
    catkin
    ddynamic_reconfigure_python
    message_runtime
    python3Packages.requests
    rc_reason_msgs
    rospy
  ];

  colconRunDepends = [
    ddynamic_reconfigure_python
    message_runtime
    python3Packages.requests
    rc_reason_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
