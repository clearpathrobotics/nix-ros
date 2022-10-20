{
  rclpy,
  rmf_fleet_adapter_python,
  rmf_fleet_msgs,
  rmf_task_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_fleet_adapter";
  pkgFinal = final.rolling.rmf_demos_fleet_adapter;
  src = srcs.rmf_demos.rmf_demos_fleet_adapter;

  colconBuildDepends = [
    rclpy
    rmf_fleet_msgs
    rmf_task_msgs
  ];

  colconRunDepends = [
    rclpy
    rmf_fleet_adapter_python
    rmf_fleet_msgs
    rmf_task_msgs
  ];

  colconTestDepends = [
  ];
}
