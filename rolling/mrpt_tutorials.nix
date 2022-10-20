{
  ament_cmake,
  cmake,
  teleop_twist_keyboard,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_tutorials";
  pkgFinal = final.rolling.mrpt_tutorials;
  src = srcs.mrpt_navigation.mrpt_tutorials;

  colconBuildDepends = [
    ament_cmake
    cmake
  ];

  colconRunDepends = [
    teleop_twist_keyboard
  ];

  colconTestDepends = [
  ];
}
