{
  ament_cmake,
  ament_cmake_uncrustify,
  ament_index_cpp,
  ceres-solver,
  eigen,
  glog,
  libyamlcpp,
  proj,
  qt5,
  rmf_utils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_traffic_editor";
  pkgFinal = final.rolling.rmf_traffic_editor;
  src = srcs.rmf_traffic_editor.rmf_traffic_editor;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    ceres-solver
    eigen
    glog
    libyamlcpp
    proj
    qt5.qtbase
    rmf_utils
  ];

  colconRunDepends = [
    ceres-solver
    glog
    proj
  ];

  colconTestDepends = [
    ament_cmake_uncrustify
  ];
}
