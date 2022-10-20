{
  catkin,
  geometry_msgs,
  orocos-kdl,
  python3Packages,
  ros_environment,
  rostest,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_geometry_msgs";
  pkgFinal = final.noetic.tf2_geometry_msgs;
  src = srcs.geometry2.tf2_geometry_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    orocos-kdl
    python3Packages.pykdl
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    orocos-kdl
    python3Packages.pykdl
    tf2
    tf2_ros
  ];

  colconTestDepends = [
    ros_environment
    rostest
  ];
}
