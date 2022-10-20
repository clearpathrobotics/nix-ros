{
  cv_bridge,
  launch,
  rclpy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opencv_tests";
  pkgFinal = final.rolling.opencv_tests;
  src = srcs.vision_opencv.opencv_tests;

  colconBuildDepends = [
    rclpy
  ];

  colconRunDepends = [
    cv_bridge
    launch
    rclpy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
