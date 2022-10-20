{
  catkin,
  geometry_msgs,
  gl_dependency,
  python3Packages,
  python_qt_binding,
  rospy,
  rostopic,
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_pose_view";
  pkgFinal = final.noetic.rqt_pose_view;
  src = srcs.rqt_pose_view.rqt_pose_view;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    gl_dependency
    python3Packages.pyopengl
    python3Packages.rospkg
    python_qt_binding
    rospy
    rostopic
    rqt_gui
    rqt_gui_py
    rqt_py_common
    tf
  ];

  colconTestDepends = [
  ];
}
