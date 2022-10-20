{
  ament_cmake,
  compressed_depth_image_transport,
  compressed_image_transport,
  theora_image_transport,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_transport_plugins";
  pkgFinal = final.rolling.image_transport_plugins;
  src = srcs.image_transport_plugins.image_transport_plugins;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    compressed_depth_image_transport
    compressed_image_transport
    theora_image_transport
  ];

  colconTestDepends = [
  ];
}
