{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "shared_queues_vendor";
  pkgFinal = final.rolling.shared_queues_vendor;
  src = srcs.rosbag2.shared_queues_vendor;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
