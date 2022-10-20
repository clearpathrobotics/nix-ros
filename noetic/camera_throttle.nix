{
  catkin,
  cras_cpp_common,
  cv_bridge,
  image_transport,
  nodelet,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_throttle";
  pkgFinal = final.noetic.camera_throttle;
  src = srcs.cras_ros_utils.camera_throttle;

  colconBuildDepends = [
    catkin
    cras_cpp_common
    cv_bridge
    image_transport
    nodelet
    roscpp
  ];

  colconRunDepends = [
    cras_cpp_common
    image_transport
    nodelet
    roscpp
  ];

  colconTestDepends = [
  ];
}
