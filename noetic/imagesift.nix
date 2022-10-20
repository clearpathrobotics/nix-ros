{
  catkin,
  cmake_modules,
  cv_bridge,
  image_transport,
  jsk_recognition_utils,
  jsk_topic_tools,
  libsiftfast,
  nodelet,
  posedetection_msgs,
  python3Packages,
  roscpp,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imagesift";
  pkgFinal = final.noetic.imagesift;
  src = srcs.jsk_recognition.imagesift;

  colconBuildDepends = [
    catkin
    cmake_modules
    cv_bridge
    image_transport
    jsk_recognition_utils
    jsk_topic_tools
    libsiftfast
    nodelet
    posedetection_msgs
    python3Packages.setuptools
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    cv_bridge
    image_transport
    jsk_recognition_utils
    jsk_topic_tools
    libsiftfast
    nodelet
    posedetection_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
