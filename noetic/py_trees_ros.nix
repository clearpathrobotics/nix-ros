{
  actionlib,
  actionlib_msgs,
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  move_base_msgs,
  nav_msgs,
  py_trees,
  py_trees_msgs,
  python3Packages,
  python_qt_binding,
  rosbag,
  rospy,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "py_trees_ros";
  pkgFinal = final.noetic.py_trees_ros;
  src = srcs.py_trees_ros.py_trees_ros;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    dynamic_reconfigure
    geometry_msgs
    move_base_msgs
    nav_msgs
    py_trees
    py_trees_msgs
    python3Packages.rospkg
    python3Packages.termcolor
    rosbag
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    geometry_msgs
    py_trees
    python_qt_binding
    rostest
    rosunit
  ];
}
