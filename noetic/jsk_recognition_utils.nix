{
  catkin,
  dynamic_reconfigure,
  eigen_conversions,
  geometry_msgs,
  image_geometry,
  image_view,
  jsk_recognition_msgs,
  jsk_tools,
  jsk_topic_tools,
  libyamlcpp,
  message_generation,
  message_runtime,
  pcl_msgs,
  pcl_ros,
  python3Packages,
  pythonPackages,
  qt5,
  sensor_msgs,
  std_msgs,
  tf,
  tf2_ros,
  tf_conversions,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "jsk_recognition_utils";
  pkgFinal = final.noetic.jsk_recognition_utils;
  src = srcs.jsk_recognition.jsk_recognition_utils;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    eigen_conversions
    geometry_msgs
    image_geometry
    jsk_recognition_msgs
    jsk_topic_tools
    libyamlcpp
    message_generation
    pcl_msgs
    pcl_ros
    python3Packages.setuptools
    pythonPackages.cython
    qt5.qtbase
    sensor_msgs
    std_msgs
    tf
    tf2_ros
    tf_conversions
    visualization_msgs
  ];

  colconRunDepends = [
    eigen_conversions
    geometry_msgs
    image_geometry
    image_view
    jsk_recognition_msgs
    jsk_topic_tools
    libyamlcpp
    message_runtime
    pcl_msgs
    pcl_ros
    python3Packages.scikitimage
    python3Packages.shapely
    pythonPackages.chainer
    sensor_msgs
    std_msgs
    tf
    tf2_ros
    tf_conversions
    visualization_msgs
  ];

  colconTestDepends = [
    jsk_tools
  ];
}
