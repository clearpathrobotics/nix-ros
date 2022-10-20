{
  ament_cmake,
  tf2,
  tf2_bullet,
  tf2_eigen,
  tf2_eigen_kdl,
  tf2_geometry_msgs,
  tf2_kdl,
  tf2_msgs,
  tf2_py,
  tf2_ros,
  tf2_sensor_msgs,
  tf2_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geometry2";
  pkgFinal = final.rolling.geometry2;
  src = srcs.geometry2.geometry2;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    tf2
    tf2_bullet
    tf2_eigen
    tf2_eigen_kdl
    tf2_geometry_msgs
    tf2_kdl
    tf2_msgs
    tf2_py
    tf2_ros
    tf2_sensor_msgs
    tf2_tools
  ];

  colconTestDepends = [
  ];
}
