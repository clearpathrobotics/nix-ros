{
  cmake,
  curl,
  protobuf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_dynamics_api";
  pkgFinal = final.rolling.rc_dynamics_api;
  src = srcs.rc_dynamics_api.rc_dynamics_api;

  colconBuildDepends = [
    cmake
    curl
    protobuf
  ];

  colconRunDepends = [
    curl
    protobuf
  ];

  colconTestDepends = [
  ];
}
