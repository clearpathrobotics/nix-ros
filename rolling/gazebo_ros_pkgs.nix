{
  ament_cmake,
  gazebo_dev,
  gazebo_msgs,
  gazebo_plugins,
  gazebo_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_ros_pkgs";
  pkgFinal = final.rolling.gazebo_ros_pkgs;
  src = srcs.gazebo_ros_pkgs.gazebo_ros_pkgs;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    gazebo_dev
    gazebo_msgs
    gazebo_plugins
    gazebo_ros
  ];

  colconTestDepends = [
  ];
}
