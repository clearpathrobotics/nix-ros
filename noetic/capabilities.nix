{
  bondpy,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nodelet,
  python3Packages,
  roslaunch,
  rospy,
  rosservice,
  rostest,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "capabilities";
  pkgFinal = final.noetic.capabilities;
  src = srcs.capabilities.capabilities;

  colconBuildDepends = [
    catkin
    message_generation
    roslaunch
    rospy
    rostest
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    bondpy
    message_runtime
    nodelet
    python3Packages.pyyaml
    roslaunch
    rospy
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
    geometry_msgs
    python3Packages.coverage
    python3Packages.mock
    python3Packages.pycodestyle
    rosservice
  ];
}
