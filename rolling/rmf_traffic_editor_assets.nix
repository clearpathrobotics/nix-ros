{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_traffic_editor_assets";
  pkgFinal = final.rolling.rmf_traffic_editor_assets;
  src = srcs.rmf_traffic_editor.rmf_traffic_editor_assets;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
