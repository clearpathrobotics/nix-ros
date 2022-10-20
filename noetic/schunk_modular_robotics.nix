{
  catkin,
  schunk_description,
  schunk_libm5api,
  schunk_powercube_chain,
  schunk_sdh,
  schunk_simulated_tactile_sensors,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "schunk_modular_robotics";
  pkgFinal = final.noetic.schunk_modular_robotics;
  src = srcs.schunk_modular_robotics.schunk_modular_robotics;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    schunk_description
    schunk_libm5api
    schunk_powercube_chain
    schunk_sdh
    schunk_simulated_tactile_sensors
  ];

  colconTestDepends = [
  ];
}
