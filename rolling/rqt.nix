{
  rqt_gui,
  rqt_gui_cpp,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt";
  pkgFinal = final.rolling.rqt;
  src = srcs.rqt.rqt;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rqt_gui
    rqt_gui_cpp
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
