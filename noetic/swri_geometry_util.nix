{
  catkin,
  cmake_modules,
  cv_bridge,
  eigen,
  geos,
  pkg-config,
  roscpp,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_geometry_util";
  pkgFinal = final.noetic.swri_geometry_util;
  src = srcs.marti_common.swri_geometry_util;

  colconBuildDepends = [
    catkin
    cmake_modules
    cv_bridge
    eigen
    geos
    pkg-config
    roscpp
    tf
  ];

  colconRunDepends = [
    cmake_modules
    cv_bridge
    eigen
    geos
    roscpp
    tf
  ];

  colconTestDepends = [
    rostest
  ];
}
