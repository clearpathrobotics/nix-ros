{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  python3Packages,
  qt5,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "python_qt_binding";
  pkgFinal = final.rolling.python_qt_binding;
  src = srcs.python_qt_binding.python_qt_binding;

  colconBuildDepends = [
    ament_cmake
    python3Packages.pyqt5
    python3Packages.sip_4
    qt5.qtbase
  ];

  colconRunDepends = [
    python3Packages.pyqt5
    python3Packages.sip_4
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
  ];
}
