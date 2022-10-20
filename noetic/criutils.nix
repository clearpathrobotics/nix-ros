{
  baldor,
  catkin,
  cv_bridge,
  geometry_msgs,
  image_geometry,
  python3Packages,
  resource_retriever,
  rostopic,
  sensor_msgs,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "criutils";
  pkgFinal = final.noetic.criutils;
  src = srcs.criutils.criutils;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    baldor
    cv_bridge
    geometry_msgs
    image_geometry
    python3Packages.numpy
    python3Packages.termcolor
    resource_retriever
    rostopic
    sensor_msgs
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
