{
  asio,
  asyncapi_gencpp,
  cmake,
  eigen,
  spdlog,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opensw";
  pkgFinal = final.rolling.opensw;
  src = srcs.opensw.opensw;

  colconBuildDepends = [
    asio
    asyncapi_gencpp
    cmake
    eigen
    spdlog
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
