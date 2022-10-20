{
  binutils,
  boost,
  cppzmq,
  lz4,
  qt5,
  zstd,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "plotjuggler";
  pkgFinal = final.rolling.plotjuggler;
  src = srcs.plotjuggler.plotjuggler;

  colconBuildDepends = [
    binutils
    boost
    cppzmq
    lz4
    qt5.qtbase
    qt5.qtsvg
    qt5.qtwebsockets
    qt5.qtx11extras
    zstd
  ];

  colconRunDepends = [
    binutils
    boost
    cppzmq
    lz4
    qt5.qtbase
    qt5.qtsvg
    qt5.qtwebsockets
    qt5.qtx11extras
    zstd
  ];

  colconTestDepends = [
  ];
}
