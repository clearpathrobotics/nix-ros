{
  catkin,
  opencv,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_geometry";
  pkgFinal = final.noetic.image_geometry;
  src = srcs.vision_opencv.image_geometry;

  colconBuildDepends = [
    catkin
    opencv
    sensor_msgs
  ];

  colconRunDepends = [
    opencv
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
