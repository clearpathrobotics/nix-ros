{
  catkin,
  geometry_msgs,
  kdl_parser,
  p2os_driver,
  p2os_msgs,
  sensor_msgs,
  std_msgs,
  tf,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "p2os_urdf";
  pkgFinal = final.noetic.p2os_urdf;
  src = srcs.p2os.p2os_urdf;

  colconBuildDepends = [
    catkin
    geometry_msgs
    kdl_parser
    sensor_msgs
    std_msgs
    tf
    urdf
  ];

  colconRunDepends = [
    geometry_msgs
    kdl_parser
    p2os_driver
    p2os_msgs
    sensor_msgs
    std_msgs
    tf
    urdf
  ];

  colconTestDepends = [
  ];
}
