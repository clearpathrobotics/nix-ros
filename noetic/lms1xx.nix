{
  catkin,
  rosconsole_bridge,
  roscpp,
  roscpp_serialization,
  roslaunch,
  roslint,
  rosunit,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lms1xx";
  pkgFinal = final.noetic.lms1xx;
  src = srcs.lms1xx.lms1xx;

  colconBuildDepends = [
    catkin
    rosconsole_bridge
    roscpp
    roscpp_serialization
    sensor_msgs
  ];

  colconRunDepends = [
    rosconsole_bridge
    roscpp
    roscpp_serialization
    sensor_msgs
  ];

  colconTestDepends = [
    roslaunch
    roslint
    rosunit
  ];
}
