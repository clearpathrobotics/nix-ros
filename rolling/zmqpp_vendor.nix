{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  cppzmq,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "zmqpp_vendor";
  pkgFinal = final.rolling.zmqpp_vendor;
  src = srcs.zmqpp_vendor.zmqpp_vendor;

  colconBuildDepends = [
    ament_cmake
    cppzmq
    git
  ];

  colconRunDepends = [
    cppzmq
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
