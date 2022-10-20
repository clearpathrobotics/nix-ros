{
  catkin,
  geometry_msgs,
  kdl_parser,
  sensor_msgs,
  tf_conversions,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "virtual_force_publisher";
  pkgFinal = final.noetic.virtual_force_publisher;
  src = srcs.jsk_common.virtual_force_publisher;

  colconBuildDepends = [
    catkin
    geometry_msgs
    kdl_parser
    sensor_msgs
    tf_conversions
    urdf
  ];

  colconRunDepends = [
    geometry_msgs
    kdl_parser
    sensor_msgs
    tf_conversions
    urdf
  ];

  colconTestDepends = [
  ];
}
