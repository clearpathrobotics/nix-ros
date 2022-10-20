{
  catkin,
  cmake_modules,
  microstrain_inertial_msgs,
  roscpp,
  roslint,
  rospy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_examples";
  pkgFinal = final.noetic.microstrain_inertial_examples;
  src = srcs.microstrain_inertial.microstrain_inertial_examples;

  colconBuildDepends = [
    catkin
    cmake_modules
    microstrain_inertial_msgs
    roscpp
    roslint
    rospy
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    cmake_modules
    microstrain_inertial_msgs
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
