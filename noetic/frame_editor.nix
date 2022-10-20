{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  interactive_markers,
  message_generation,
  message_runtime,
  qt_gui_py_common,
  rospy,
  rqt_gui,
  rqt_gui_py,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "frame_editor";
  pkgFinal = final.noetic.frame_editor;
  src = srcs.frame_editor.frame_editor;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    message_generation
    rospy
    rqt_gui
    rqt_gui_py
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    interactive_markers
    message_runtime
    qt_gui_py_common
    rospy
    rqt_gui
    rqt_gui_py
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
