{
  ament_cmake,
  image_common,
  image_pipeline,
  image_transport_plugins,
  laser_filters,
  laser_geometry,
  perception_pcl,
  ros_base,
  vision_opencv,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "perception";
  pkgFinal = final.rolling.perception;
  src = srcs.variants.perception;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    image_common
    image_pipeline
    image_transport_plugins
    laser_filters
    laser_geometry
    perception_pcl
    ros_base
    vision_opencv
  ];

  colconTestDepends = [
  ];
}
