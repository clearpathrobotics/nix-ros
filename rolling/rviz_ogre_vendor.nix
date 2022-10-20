{
  ament_cmake,
  ament_cmake_xmllint,
  ament_lint_auto,
  freetype,
  git,
  libGL,
  libGLU,
  pkg-config,
  xorg,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_ogre_vendor";
  pkgFinal = final.rolling.rviz_ogre_vendor;
  src = srcs.rviz.rviz_ogre_vendor;

  colconBuildDepends = [
    ament_cmake
    freetype
    git
    libGL
    libGLU
    pkg-config
    xorg.libX11
    xorg.libXaw
    xorg.libXrandr
  ];

  colconRunDepends = [
    freetype
    libGL
    libGLU
    xorg.libX11
    xorg.libXaw
    xorg.libXrandr
  ];

  colconTestDepends = [
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
