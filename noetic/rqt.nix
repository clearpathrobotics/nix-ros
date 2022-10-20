{
  catkin,
  rqt_gui,
  rqt_gui_cpp,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt";
  pkgFinal = final.noetic.rqt;
  src = srcs.rqt.rqt;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rqt_gui
    rqt_gui_cpp
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
