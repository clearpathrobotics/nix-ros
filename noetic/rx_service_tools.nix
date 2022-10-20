{
  catkin,
  python3Packages,
  pythonPackages,
  roslib,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rx_service_tools";
  pkgFinal = final.noetic.rx_service_tools;
  src = srcs.rx_service_tools.rx_service_tools;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.pyyaml
    pythonPackages.wxPython
    roslib
    rospy
  ];

  colconTestDepends = [
  ];
}
