{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "parallel_util";
  pkgFinal = final.noetic.parallel_util;
  src = srcs.jsk_common.parallel_util;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
