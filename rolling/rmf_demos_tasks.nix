{
  rmf_dispenser_msgs,
  rmf_fleet_msgs,
  rmf_lift_msgs,
  rmf_task_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_tasks";
  pkgFinal = final.rolling.rmf_demos_tasks;
  src = srcs.rmf_demos.rmf_demos_tasks;

  colconBuildDepends = [
    rmf_dispenser_msgs
    rmf_fleet_msgs
    rmf_lift_msgs
    rmf_task_msgs
  ];

  colconRunDepends = [
    rmf_dispenser_msgs
    rmf_fleet_msgs
    rmf_lift_msgs
    rmf_task_msgs
  ];

  colconTestDepends = [
  ];
}
