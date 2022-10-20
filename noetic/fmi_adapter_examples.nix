{
  catkin,
  fmi_adapter,
  roscpp,
  rqt_plot,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fmi_adapter_examples";
  pkgFinal = final.noetic.fmi_adapter_examples;
  src = srcs.fmi_adapter.fmi_adapter_examples;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    fmi_adapter
    roscpp
    rqt_plot
  ];

  colconTestDepends = [
  ];
}
