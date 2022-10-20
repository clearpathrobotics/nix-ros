{
  boost,
  catkin,
  opencv,
  python3,
  python3Packages,
  rosconsole,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cv_bridge";
  pkgFinal = final.noetic.cv_bridge;
  src = srcs.vision_opencv.cv_bridge;

  colconBuildDepends = [
    boost
    catkin
    opencv
    python3
    python3Packages.opencv3
    rosconsole
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    opencv
    python3
    python3Packages.opencv3
    rosconsole
    sensor_msgs
  ];

  colconTestDepends = [
    python3Packages.numpy
    rostest
  ];
}
