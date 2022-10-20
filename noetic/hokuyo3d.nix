{
  catkin,
  roscpp,
  roslint,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hokuyo3d";
  pkgFinal = final.noetic.hokuyo3d;
  src = srcs.hokuyo3d.hokuyo3d;

  colconBuildDepends = [
    catkin
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
