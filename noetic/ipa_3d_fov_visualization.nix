{
  catkin,
  cv_bridge,
  image_geometry,
  roscpp,
  sensor_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ipa_3d_fov_visualization";
  pkgFinal = final.noetic.ipa_3d_fov_visualization;
  src = srcs.cob_perception_common.ipa_3d_fov_visualization;

  colconBuildDepends = [
    catkin
    cv_bridge
    image_geometry
    roscpp
    sensor_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
    roscpp
    sensor_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
