{
  ament_cmake,
  curl,
  file,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libcurl_vendor";
  pkgFinal = final.rolling.libcurl_vendor;
  src = srcs.resource_retriever.libcurl_vendor;

  colconBuildDepends = [
    ament_cmake
    curl
    file
  ];

  colconRunDepends = [
    curl
    pkg-config
  ];

  colconTestDepends = [
  ];
}
