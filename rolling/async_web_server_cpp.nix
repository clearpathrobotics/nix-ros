{
  ament_cmake_ros,
  boost,
  launch_testing,
  openssl,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "async_web_server_cpp";
  pkgFinal = final.rolling.async_web_server_cpp;
  src = srcs.async_web_server_cpp.async_web_server_cpp;

  colconBuildDepends = [
    ament_cmake_ros
    boost
    openssl
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
    launch_testing
    python3Packages.websocket-client
  ];
}
