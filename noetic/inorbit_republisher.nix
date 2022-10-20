{
  catkin,
  geometry_msgs,
  python3Packages,
  roslib,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "inorbit_republisher";
  pkgFinal = final.noetic.inorbit_republisher;
  src = srcs.ros_inorbit_samples.inorbit_republisher;

  colconBuildDepends = [
    catkin
    geometry_msgs
    python3Packages.pyyaml
    roslib
    rospy
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    python3Packages.pyyaml
    python3Packages.rospkg
    roslib
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
