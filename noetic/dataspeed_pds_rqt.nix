{
  catkin,
  dataspeed_pds_msgs,
  python3Packages,
  python_qt_binding,
  rospy,
  rqt_gui,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_pds_rqt";
  pkgFinal = final.noetic.dataspeed_pds_rqt;
  src = srcs.dataspeed_pds.dataspeed_pds_rqt;

  colconBuildDepends = [
    catkin
    dataspeed_pds_msgs
    python3Packages.setuptools
    python_qt_binding
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconRunDepends = [
    dataspeed_pds_msgs
    python_qt_binding
    rospy
    rqt_gui
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
