{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "compressed_image_transport";
  pkgFinal = final.noetic.compressed_image_transport;
  src = srcs.image_transport_plugins.compressed_image_transport;

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
    rostest
  ];
}
