{
  catkin,
  dynamic_reconfigure,
  message_runtime,
  roscpp,
  roslaunch,
  rostest,
  rviz_visual_tools,
  tf2_geometry_msgs,
  toposens_description,
  toposens_driver,
  toposens_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_markers";
  pkgFinal = final.noetic.toposens_markers;
  src = srcs.toposens.toposens_markers;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    message_runtime
    roscpp
    rviz_visual_tools
    tf2_geometry_msgs
    toposens_description
    toposens_driver
    toposens_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    message_runtime
    roscpp
    rviz_visual_tools
    tf2_geometry_msgs
    toposens_description
    toposens_driver
    toposens_msgs
  ];

  colconTestDepends = [
    roslaunch
    rostest
  ];
}
