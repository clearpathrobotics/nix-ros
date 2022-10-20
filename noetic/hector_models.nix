{
  catkin,
  hector_sensors_description,
  hector_xacro_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_models";
  pkgFinal = final.noetic.hector_models;
  src = srcs.hector_models.hector_models;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    hector_sensors_description
    hector_xacro_tools
  ];

  colconTestDepends = [
  ];
}
