{
  ament_cmake,
  doxygen,
  eigen,
  git,
  tcb_span,
  tl_expected,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rsl";
  pkgFinal = final.rolling.rsl;
  src = srcs.rsl.rsl;

  colconBuildDepends = [
    ament_cmake
    doxygen
    eigen
    git
    tcb_span
    tl_expected
  ];

  colconRunDepends = [
    eigen
    tcb_span
    tl_expected
  ];

  colconTestDepends = [
  ];
}
