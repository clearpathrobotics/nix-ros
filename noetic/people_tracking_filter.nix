{
  catkin,
  geometry_msgs,
  message_filters,
  people_msgs,
  roscpp,
  roslaunch,
  roslint,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "people_tracking_filter";
  pkgFinal = final.noetic.people_tracking_filter;
  src = srcs.people.people_tracking_filter;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_filters
    people_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
    people_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
