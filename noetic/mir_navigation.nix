{
  amcl,
  base_local_planner,
  catkin,
  dwa_local_planner,
  dwb_critics,
  dwb_local_planner,
  dwb_plugins,
  hector_mapping,
  map_server,
  mir_driver,
  mir_dwb_critics,
  mir_gazebo,
  move_base,
  nav_core_adapter,
  python3Packages,
  roslaunch,
  sbpl_lattice_planner,
  teb_local_planner,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_navigation";
  pkgFinal = final.noetic.mir_navigation;
  src = srcs.mir_robot.mir_navigation;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    amcl
    base_local_planner
    dwa_local_planner
    dwb_critics
    dwb_local_planner
    dwb_plugins
    hector_mapping
    map_server
    mir_driver
    mir_dwb_critics
    mir_gazebo
    move_base
    nav_core_adapter
    python3Packages.matplotlib
    sbpl_lattice_planner
    teb_local_planner
  ];

  colconTestDepends = [
  ];
}
