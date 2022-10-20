{
  binutils,
  boost,
  diagnostic_msgs,
  geometry_msgs,
  nav_msgs,
  plotjuggler,
  plotjuggler_msgs,
  qt5,
  sensor_msgs,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "plotjuggler_ros";
  pkgFinal = final.noetic.plotjuggler_ros;
  src = srcs.plotjuggler_ros.plotjuggler_ros;

  colconBuildDepends = [
    binutils
    boost
    diagnostic_msgs
    geometry_msgs
    nav_msgs
    plotjuggler
    plotjuggler_msgs
    qt5.qtbase
    qt5.qtsvg
    qt5.qtwebsockets
    sensor_msgs
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    binutils
    boost
    diagnostic_msgs
    geometry_msgs
    nav_msgs
    plotjuggler
    plotjuggler_msgs
    qt5.qtbase
    qt5.qtsvg
    qt5.qtwebsockets
    sensor_msgs
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
