{
  ament_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "example_interfaces";
  pkgFinal = final.rolling.example_interfaces;
  src = srcs.example_interfaces.example_interfaces;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
