{
  ament_cmake,
  cv_bridge,
  image_transport,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "compressed_depth_image_transport";
  pkgFinal = final.rolling.compressed_depth_image_transport;
  src = srcs.image_transport_plugins.compressed_depth_image_transport;

  colconBuildDepends = [
    ament_cmake
    cv_bridge
    image_transport
  ];

  colconRunDepends = [
    cv_bridge
    image_transport
  ];

  colconTestDepends = [
  ];
}
