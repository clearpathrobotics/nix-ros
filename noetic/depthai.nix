{
  libusb1,
  nlohmann_json,
  opencv,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "depthai";
  pkgFinal = final.noetic.depthai;
  src = srcs.depthai.depthai;

  colconBuildDepends = [
    libusb1
    nlohmann_json
    opencv
    ros_environment
  ];

  colconRunDepends = [
    libusb1
    nlohmann_json
    opencv
  ];

  colconTestDepends = [
  ];
}
