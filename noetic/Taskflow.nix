{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "Taskflow";
  pkgFinal = final.noetic.Taskflow;
  src = srcs.taskflow.Taskflow;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
