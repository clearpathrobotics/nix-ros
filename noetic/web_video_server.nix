{
  async_web_server_cpp,
  catkin,
  cv_bridge,
  ffmpeg,
  image_transport,
  roscpp,
  roslib,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "web_video_server";
  pkgFinal = final.noetic.web_video_server;
  src = srcs.web_video_server.web_video_server;

  colconBuildDepends = [
    async_web_server_cpp
    catkin
    cv_bridge
    ffmpeg
    image_transport
    roscpp
    roslib
    sensor_msgs
  ];

  colconRunDepends = [
    async_web_server_cpp
    cv_bridge
    ffmpeg
    image_transport
    roscpp
    roslib
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
