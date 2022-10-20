{
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  eigen,
  rmf_battery,
  rmf_utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_task";
  pkgFinal = final.rolling.rmf_task;
  src = srcs.rmf_task.rmf_task;

  colconBuildDepends = [
    eigen
    rmf_battery
    rmf_utils
  ];

  colconRunDepends = [
    eigen
    rmf_battery
    rmf_utils
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
