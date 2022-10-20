{
  actionlib,
  actionlib_msgs,
  catkin,
  python3Packages,
  roslib,
  rospy,
  rostopic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "actionlib_tools";
  pkgFinal = final.noetic.actionlib_tools;
  src = srcs.actionlib.actionlib_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    python3Packages.wxPython_4_0
    roslib
    rospy
    rostopic
  ];

  colconTestDepends = [
  ];
}
