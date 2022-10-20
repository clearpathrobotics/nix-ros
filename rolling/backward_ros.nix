{
  ament_cmake,
  elfutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "backward_ros";
  pkgFinal = final.rolling.backward_ros;
  src = srcs.backward_ros.backward_ros;

  colconBuildDepends = [
    ament_cmake
    elfutils
  ];

  colconRunDepends = [
    elfutils
  ];

  colconTestDepends = [
  ];
}
