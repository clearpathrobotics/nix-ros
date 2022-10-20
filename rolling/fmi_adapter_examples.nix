{
  ament_cmake,
  fmi_adapter,
  launch,
  launch_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fmi_adapter_examples";
  pkgFinal = final.rolling.fmi_adapter_examples;
  src = srcs.fmi_adapter.fmi_adapter_examples;

  colconBuildDepends = [
    ament_cmake
    fmi_adapter
  ];

  colconRunDepends = [
    fmi_adapter
    launch
    launch_ros
  ];

  colconTestDepends = [
  ];
}
