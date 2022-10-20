{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_interface_files";
  pkgFinal = final.rolling.test_interface_files;
  src = srcs.test_interface_files.test_interface_files;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
