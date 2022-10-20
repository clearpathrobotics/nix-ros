{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_resources";
    rev = "0be98e1b263e823fa41b653359da582dc585c827";
    hash = "sha256-fdnZJauLDN8iOueFWnp0Cl3jnZ9uhhfb0+UlE+kM/6Y=";
    name = "ros-planning-moveit_resources-0be98e1b263e823fa41b653359da582dc585c827";
  });
in
{
  moveit_resources = pkg "sha256-YgyRQnnB4tpizcbI0CkjxwFQwedudK+iY0ECIkXdm7Y=" "moveit_resources";
  moveit_resources_dual_panda_moveit_config = pkg "sha256-0uAoGbxaO2OQ3eL4HAw/G9o9wCNwGIcyqnPx2kJTlNE=" "dual_panda_moveit_config";
  moveit_resources_fanuc_description = pkg "sha256-vqi8SzXtYbES+ys7dcZ6CIXQgrT4zzumcEOAbJ4lHAI=" "fanuc_description";
  moveit_resources_fanuc_moveit_config = pkg "sha256-KdI+ZkCV7R/zubzWEDdnPO8HajSztsxPjLj4lrsCQ8I=" "fanuc_moveit_config";
  moveit_resources_panda_description = pkg "sha256-KsTJj2Boid8zfPeG/incKaQ6qCTnsEaDIigWpSGYaJ4=" "panda_description";
  moveit_resources_panda_moveit_config = pkg "sha256-TAQpZe9GyGxgwY8QZ9UB46O3NaOYT6AF5wlvrf8z7T0=" "panda_moveit_config";
  moveit_resources_pr2_description = pkg "sha256-Q+V2GvquCtjESB3cIe07yZS41RxAPl8Y3hia9/uxAoc=" "pr2_description";
  moveit_resources_prbt_ikfast_manipulator_plugin = pkg "sha256-Ymyo842oJF+lX3VNFyfndfVLd0IkaP361oaCKxpDhNA=" "prbt_ikfast_manipulator_plugin";
  moveit_resources_prbt_moveit_config = pkg "sha256-bIYay27qM7wc1yanGxbmi5bOPDnRY8ODil94U/COaMM=" "prbt_moveit_config";
  moveit_resources_prbt_pg70_support = pkg "sha256-IWH45Xs5jhmDag0Uio1oJZOuBXicS+t1sWIrH0XKn+I=" "prbt_pg70_support";
  moveit_resources_prbt_support = pkg "sha256-d6yfXC8JVjp5keCYXz+vg77ZNiLFVU6VSCRc4tS58Q8=" "prbt_support";
}
