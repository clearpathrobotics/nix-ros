{
  catkin,
  eigen_conversions,
  exotica_collision_scene_fcl_latest,
  exotica_core,
  exotica_python,
  geometry_msgs,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "exotica_core_task_maps";
  pkgFinal = final.noetic.exotica_core_task_maps;
  src = srcs.exotica.exotica_core_task_maps;

  colconBuildDepends = [
    catkin
    eigen_conversions
    exotica_core
    exotica_python
    geometry_msgs
  ];

  colconRunDepends = [
    exotica_core
    exotica_python
    geometry_msgs
  ];

  colconTestDepends = [
    exotica_collision_scene_fcl_latest
    rosunit
  ];
}
