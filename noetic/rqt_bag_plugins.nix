{
  catkin,
  geometry_msgs,
  python3Packages,
  rosbag,
  roslib,
  rospy,
  rqt_bag,
  rqt_gui,
  rqt_gui_py,
  rqt_plot,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_bag_plugins";
  pkgFinal = final.noetic.rqt_bag_plugins;
  src = srcs.rqt_bag.rqt_bag_plugins;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    python3Packages.pillow
    python3Packages.pycairo
    rosbag
    roslib
    rospy
    rqt_bag
    rqt_gui
    rqt_gui_py
    rqt_plot
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
