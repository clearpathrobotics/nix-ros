{
  ament_cmake,
  geometry2,
  kdl_parser,
  robot_state_publisher,
  ros_core,
  rosbag2,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_base";
  pkgFinal = final.rolling.ros_base;
  src = srcs.variants.ros_base;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    geometry2
    kdl_parser
    robot_state_publisher
    ros_core
    rosbag2
    urdf
  ];

  colconTestDepends = [
  ];
}
