{
  catkin,
  libuvc_camera,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libuvc_ros";
  pkgFinal = final.noetic.libuvc_ros;
  src = srcs.libuvc_ros.libuvc_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    libuvc_camera
  ];

  colconTestDepends = [
  ];
}
