{
  boost,
  catkin,
  python3Packages,
  ros_environment,
  rosmake,
  rospack,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roslib";
  pkgFinal = final.noetic.roslib;
  src = srcs.ros.roslib;

  colconBuildDepends = [
    boost
    catkin
    python3Packages.setuptools
    rospack
  ];

  colconRunDepends = [
    catkin
    python3Packages.rospkg
    ros_environment
    rospack
  ];

  colconTestDepends = [
    boost
    rosmake
  ];
}
