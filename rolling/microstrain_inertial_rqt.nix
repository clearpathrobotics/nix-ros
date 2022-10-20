{
  geometry_msgs,
  microstrain_inertial_msgs,
  nav_msgs,
  rclpy,
  rqt_gui,
  rqt_gui_py,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_rqt";
  pkgFinal = final.rolling.microstrain_inertial_rqt;
  src = srcs.microstrain_inertial.microstrain_inertial_rqt;

  colconBuildDepends = [
    geometry_msgs
    microstrain_inertial_msgs
    nav_msgs
    rclpy
    rqt_gui
    rqt_gui_py
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    microstrain_inertial_msgs
    nav_msgs
    rclpy
    rqt_gui
    rqt_gui_py
    std_msgs
  ];

  colconTestDepends = [
  ];
}
