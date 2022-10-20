{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  rosgraph,
  roslaunch,
  rospack,
  rospy,
  rospy_tutorials,
  rosservice,
  rostest,
  rosunit,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "app_manager";
  pkgFinal = final.noetic.app_manager;
  src = srcs.app_manager.app_manager;

  colconBuildDepends = [
    catkin
    message_generation
    python3Packages.setuptools
    rosgraph
    roslaunch
    rospy
    rosunit
  ];

  colconRunDepends = [
    message_runtime
    rosgraph
    roslaunch
    rospack
    rospy
    rosunit
    std_srvs
  ];

  colconTestDepends = [
    rospy_tutorials
    rosservice
    rostest
  ];
}
