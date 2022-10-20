{
  catkin,
  tf2,
  tf2_bullet,
  tf2_eigen,
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
  pkgFinal = final.noetic.geometry2;
  src = srcs.geometry2.geometry2;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    tf2
    tf2_bullet
    tf2_eigen
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
