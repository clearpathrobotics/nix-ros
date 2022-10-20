{
  catkin,
  imu_processors,
  imu_transformer,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_pipeline";
  pkgFinal = final.noetic.imu_pipeline;
  src = srcs.imu_pipeline.imu_pipeline;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    imu_processors
    imu_transformer
  ];

  colconTestDepends = [
  ];
}
