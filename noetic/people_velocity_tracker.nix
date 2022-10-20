{
  catkin,
  easy_markers,
  geometry_msgs,
  kalman_filter,
  leg_detector,
  people_msgs,
  roslaunch,
  roslib,
  roslint,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "people_velocity_tracker";
  pkgFinal = final.noetic.people_velocity_tracker;
  src = srcs.people.people_velocity_tracker;

  colconBuildDepends = [
    catkin
    easy_markers
    geometry_msgs
    kalman_filter
    people_msgs
    roslib
    rospy
  ];

  colconRunDepends = [
    easy_markers
    geometry_msgs
    kalman_filter
    leg_detector
    people_msgs
    roslib
    rospy
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
