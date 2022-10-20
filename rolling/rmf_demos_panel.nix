{
  python3Packages,
  rmf_demos_dashboard_resources,
  rmf_fleet_msgs,
  rmf_task_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_panel";
  pkgFinal = final.rolling.rmf_demos_panel;
  src = srcs.rmf_demos.rmf_demos_panel;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    python3Packages.flask
    python3Packages.flask-cors
    python3Packages.websockets
    rmf_demos_dashboard_resources
    rmf_fleet_msgs
    rmf_task_msgs
  ];

  colconTestDepends = [
  ];
}
