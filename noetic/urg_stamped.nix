{
  catkin,
  roscpp,
  roslint,
  rostest,
  rosunit,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urg_stamped";
  pkgFinal = final.noetic.urg_stamped;
  src = srcs.urg_stamped.urg_stamped;

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
    rostest
    rosunit
  ];
}
