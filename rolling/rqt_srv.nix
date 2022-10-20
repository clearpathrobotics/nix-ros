{
  rclpy,
  rqt_gui,
  rqt_gui_py,
  rqt_msg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rqt_srv";
  pkgFinal = final.rolling.rqt_srv;
  src = srcs.rqt_srv.rqt_srv;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    rclpy
    rqt_gui
    rqt_gui_py
    rqt_msg
  ];

  colconTestDepends = [
  ];
}
