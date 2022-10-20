{
  catkin,
  filters,
  nodelet,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sensor_filters";
  pkgFinal = final.noetic.sensor_filters;
  src = srcs.sensor_filters.sensor_filters;

  colconBuildDepends = [
    catkin
    filters
    nodelet
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    filters
    nodelet
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
