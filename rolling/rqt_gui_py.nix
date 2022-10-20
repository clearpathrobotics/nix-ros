{
  ament_lint_auto,
  ament_lint_common,
  qt_gui,
  rqt_gui,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_gui_py";
  pkgFinal = final.rolling.rqt_gui_py;
  src = srcs.rqt.rqt_gui_py;

  colconBuildDepends = [
    qt_gui
    rqt_gui
  ];

  colconRunDepends = [
    qt_gui
    rqt_gui
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
