{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  rospy,
  rosservice,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_manager_msgs";
  pkgFinal = final.noetic.controller_manager_msgs;
  src = srcs.ros_control.controller_manager_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    python3Packages.setuptools
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rospy
    rosservice
    std_msgs
  ];

  colconTestDepends = [
  ];
}
