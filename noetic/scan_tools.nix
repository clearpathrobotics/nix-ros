{
  catkin,
  laser_ortho_projector,
  laser_scan_matcher,
  laser_scan_sparsifier,
  laser_scan_splitter,
  ncd_parser,
  polar_scan_matcher,
  scan_to_cloud_converter,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "scan_tools";
  pkgFinal = final.noetic.scan_tools;
  src = srcs.scan_tools.scan_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    laser_ortho_projector
    laser_scan_matcher
    laser_scan_sparsifier
    laser_scan_splitter
    ncd_parser
    polar_scan_matcher
    scan_to_cloud_converter
  ];

  colconTestDepends = [
  ];
}
