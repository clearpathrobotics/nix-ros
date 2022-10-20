{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "compressed_depth_image_transport";
  pkgFinal = final.noetic.compressed_depth_image_transport;
  src = srcs.image_transport_plugins.compressed_depth_image_transport;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_transport
  ];

  colconTestDepends = [
  ];
}
