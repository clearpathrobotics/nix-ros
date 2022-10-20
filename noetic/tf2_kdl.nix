{
  catkin,
  cmake_modules,
  eigen,
  orocos-kdl,
  ros_environment,
  rostest,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_kdl";
  pkgFinal = final.noetic.tf2_kdl;
  src = srcs.geometry2.tf2_kdl;

  colconBuildDepends = [
    catkin
    cmake_modules
    eigen
    orocos-kdl
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    orocos-kdl
    tf2
    tf2_ros
  ];

  colconTestDepends = [
    ros_environment
    rostest
  ];
}
