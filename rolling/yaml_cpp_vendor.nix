{
  ament_cmake,
  libyamlcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "yaml_cpp_vendor";
  pkgFinal = final.rolling.yaml_cpp_vendor;
  src = srcs.yaml_cpp_vendor.yaml_cpp_vendor;

  colconBuildDepends = [
    ament_cmake
    libyamlcpp
  ];

  colconRunDepends = [
    libyamlcpp
  ];

  colconTestDepends = [
  ];
}
