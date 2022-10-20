{
  catkin,
  fuse_constraints,
  fuse_core,
  fuse_doc,
  fuse_graphs,
  fuse_models,
  fuse_msgs,
  fuse_optimizers,
  fuse_publishers,
  fuse_variables,
  fuse_viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fuse";
  pkgFinal = final.noetic.fuse;
  src = srcs.fuse.fuse;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    fuse_constraints
    fuse_core
    fuse_doc
    fuse_graphs
    fuse_models
    fuse_msgs
    fuse_optimizers
    fuse_publishers
    fuse_variables
    fuse_viz
  ];

  colconTestDepends = [
  ];
}
