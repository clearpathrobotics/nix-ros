{
  ament_cmake,
  gazebo,
  gazebo_plugins,
  gazebo_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aws_robomaker_small_warehouse_world";
  pkgFinal = final.rolling.aws_robomaker_small_warehouse_world;
  src = srcs.aws-robomaker-small-warehouse-world.aws_robomaker_small_warehouse_world;

  colconBuildDepends = [
    ament_cmake
    gazebo_ros
  ];

  colconRunDepends = [
    gazebo
    gazebo_plugins
    gazebo_ros
  ];

  colconTestDepends = [
  ];
}
