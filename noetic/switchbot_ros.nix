{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "switchbot_ros";
  pkgFinal = final.noetic.switchbot_ros;
  src = srcs.jsk_3rdparty.switchbot_ros;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
    python3Packages.setuptools
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_runtime
    python3Packages.requests
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
