{
  ament_copyright,
  ament_flake8,
  ament_pep257,
  cv_bridge,
  image_geometry,
  message_filters,
  python3Packages,
  rclpy,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_calibration";
  pkgFinal = final.rolling.camera_calibration;
  src = srcs.image_pipeline.camera_calibration;

  colconBuildDepends = [
    cv_bridge
    image_geometry
    message_filters
    python3Packages.opencv3
    rclpy
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
    message_filters
    python3Packages.opencv3
    rclpy
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
    ament_copyright
    ament_flake8
    ament_pep257
    python3Packages.pytest
    python3Packages.requests
  ];
}
