{
  ament_cmake,
  python3Packages,
  rqt_gui_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "slider_publisher";
  pkgFinal = final.rolling.slider_publisher;
  src = srcs.slider_publisher.slider_publisher;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    python3Packages.numpy
    python3Packages.scipy
    rqt_gui_py
  ];

  colconTestDepends = [
  ];
}
