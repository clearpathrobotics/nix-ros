{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  tango-icon-theme,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tango_icons_vendor";
  pkgFinal = final.rolling.tango_icons_vendor;
  src = srcs.tango_icons_vendor.tango_icons_vendor;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    tango-icon-theme
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
