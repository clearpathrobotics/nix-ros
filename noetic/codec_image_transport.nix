{
  catkin,
  ffmpeg,
  image_transport,
  pluginlib,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "codec_image_transport";
  pkgFinal = final.noetic.codec_image_transport;
  src = srcs.codec_image_transport.codec_image_transport;

  colconBuildDepends = [
    catkin
    ffmpeg
    image_transport
    pluginlib
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    ffmpeg
    image_transport
    pluginlib
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
