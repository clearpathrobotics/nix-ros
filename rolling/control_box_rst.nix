{
  cmake,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "control_box_rst";
  pkgFinal = final.rolling.control_box_rst;
  src = srcs.control_box_rst.control_box_rst;

  colconBuildDepends = [
    cmake
    eigen
  ];

  colconRunDepends = [
    eigen
  ];

  colconTestDepends = [
  ];
}
