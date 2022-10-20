{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ov_data";
  pkgFinal = final.noetic.ov_data;
  src = srcs.open_vins.ov_data;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
