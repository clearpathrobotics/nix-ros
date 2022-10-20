{
  ament_cmake_core,
  ament_package,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_workspace";
  pkgFinal = final.rolling.ros_workspace;
  src = srcs.ros_workspace.ros_workspace;

  colconBuildDepends = [
    ament_cmake_core
    ament_package
    cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
