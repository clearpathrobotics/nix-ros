{
  ament_cmake,
  gazebo_11,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_dev";
  pkgFinal = final.rolling.gazebo_dev;
  src = srcs.gazebo_ros_pkgs.gazebo_dev;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    gazebo_11
  ];

  colconTestDepends = [
  ];
}
