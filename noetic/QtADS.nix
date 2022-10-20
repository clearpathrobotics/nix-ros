{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "QtADS";
  pkgFinal = final.noetic.QtADS;
  src = srcs.qt_advanced_docking_system.QtADS;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
