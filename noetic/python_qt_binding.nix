{
  catkin,
  python3Packages,
  qt5,
  rosbuild,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "python_qt_binding";
  pkgFinal = final.noetic.python_qt_binding;
  src = srcs.python_qt_binding.python_qt_binding;

  colconBuildDepends = [
    catkin
    python3Packages.pyqt5
    python3Packages.sip_4
    qt5.qtbase
    rosbuild
  ];

  colconRunDepends = [
    catkin
    python3Packages.pyqt5
    python3Packages.sip_4
  ];

  colconTestDepends = [
  ];
}
