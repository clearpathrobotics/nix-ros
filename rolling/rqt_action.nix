{
  ament_flake8,
  ament_xmllint,
  rqt_gui,
  rqt_gui_py,
  rqt_msg,
  rqt_py_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_action";
  pkgFinal = final.rolling.rqt_action;
  src = srcs.rqt_action.rqt_action;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rqt_gui
    rqt_gui_py
    rqt_msg
    rqt_py_common
  ];

  colconTestDepends = [
    ament_flake8
    ament_xmllint
  ];
}
