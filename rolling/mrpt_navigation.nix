{
  mrpt_localization,
  mrpt_tutorials,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_navigation";
  pkgFinal = final.rolling.mrpt_navigation;
  src = srcs.mrpt_navigation.mrpt_navigation;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    mrpt_localization
    mrpt_tutorials
  ];

  colconTestDepends = [
  ];
}
