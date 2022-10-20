{
  rqt_gui,
  rqt_gui_py,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_service_caller";
  pkgFinal = final.rolling.rqt_service_caller;
  src = srcs.rqt_service_caller.rqt_service_caller;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rqt_gui
    rqt_gui_py
    rqt_py_common
  ];

  colconTestDepends = [
  ];
}
