{
  actionlib,
  angles,
  catkin,
  eigen,
  fetch_auto_dock_msgs,
  fetch_driver_msgs,
  geometry_msgs,
  nav_msgs,
  roscpp,
  roslib,
  rospy,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_open_auto_dock";
  pkgFinal = final.noetic.fetch_open_auto_dock;
  src = srcs.fetch_open_auto_dock.fetch_open_auto_dock;

  colconBuildDepends = [
    actionlib
    angles
    catkin
    eigen
    fetch_auto_dock_msgs
    fetch_driver_msgs
    geometry_msgs
    nav_msgs
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    actionlib
    eigen
    fetch_auto_dock_msgs
    fetch_driver_msgs
    geometry_msgs
    nav_msgs
    roscpp
    roslib
    rospy
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
