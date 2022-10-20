{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_utils_3rdparty";
  pkgFinal = final.noetic.rwt_utils_3rdparty;
  src = srcs.visualization_rwt.rwt_utils_3rdparty;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
