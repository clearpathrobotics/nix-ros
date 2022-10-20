{
  ament_cmake,
  git,
  uncrustify,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "uncrustify_vendor";
  pkgFinal = final.rolling.uncrustify_vendor;
  src = srcs.uncrustify_vendor.uncrustify_vendor;

  colconBuildDepends = [
    ament_cmake
    git
    uncrustify
  ];

  colconRunDepends = [
    uncrustify
  ];

  colconTestDepends = [
  ];
}
