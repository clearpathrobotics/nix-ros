{
  catkin,
  cv_bridge,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "aruco";
  pkgFinal = final.noetic.aruco;
  src = srcs.aruco_ros.aruco;

  colconBuildDepends = [
    catkin
    cv_bridge
    eigen
  ];

  colconRunDepends = [
    cv_bridge
    eigen
  ];

  colconTestDepends = [
  ];
}
