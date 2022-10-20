{
  catkin,
  image_common,
  image_pipeline,
  image_transport_plugins,
  laser_pipeline,
  perception_pcl,
  ros_base,
  vision_opencv,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "perception";
  pkgFinal = final.noetic.perception;
  src = srcs.metapackages.perception;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    image_common
    image_pipeline
    image_transport_plugins
    laser_pipeline
    perception_pcl
    ros_base
    vision_opencv
  ];

  colconTestDepends = [
  ];
}
