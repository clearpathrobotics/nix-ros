{
  catkin,
  exotica_core,
  geometric_shapes,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_collision_scene_fcl_latest";
  pkgFinal = final.noetic.exotica_collision_scene_fcl_latest;
  src = srcs.exotica.exotica_collision_scene_fcl_latest;

  colconBuildDepends = [
    catkin
    exotica_core
    geometric_shapes
  ];

  colconRunDepends = [
    exotica_core
    geometric_shapes
  ];

  colconTestDepends = [
  ];
}
