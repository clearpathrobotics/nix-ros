{
  catkin,
  cv_bridge,
  nodelet,
  roscpp,
  roslint,
  zbar,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "zbar_ros";
  pkgFinal = final.noetic.zbar_ros;
  src = srcs.zbar_ros.zbar_ros;

  colconBuildDepends = [
    catkin
    cv_bridge
    nodelet
    roscpp
    roslint
    zbar
  ];

  colconRunDepends = [
    cv_bridge
    nodelet
    roscpp
    zbar
  ];

  colconTestDepends = [
  ];
}
