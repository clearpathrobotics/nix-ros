{
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  eigen,
  eigen3_cmake_module,
  rmf_traffic,
  rmf_utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_battery";
  pkgFinal = final.rolling.rmf_battery;
  src = srcs.rmf_battery.rmf_battery;

  colconBuildDepends = [
    eigen
    eigen3_cmake_module
    rmf_traffic
    rmf_utils
  ];

  colconRunDepends = [
    rmf_traffic
    rmf_utils
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
