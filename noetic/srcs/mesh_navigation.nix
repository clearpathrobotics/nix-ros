{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "mesh_navigation";
    rev = "60c6af26e812d84764695528557405abf53de1ed";
    hash = "sha256-4mNnqBsV61rzqctzqsKiLW/YxNdNhwnbx9yv8QV0AoM=";
    name = "uos-mesh_navigation-60c6af26e812d84764695528557405abf53de1ed";
  });
in
{
  cvp_mesh_planner = pkg "sha256-RbPYuvZiCDhgnFZuUBkYFtdpaiHRQcsby6m+UlFSoTs=" "cvp_mesh_planner";
  dijkstra_mesh_planner = pkg "sha256-0jcTvJztBd30A7Qi+8EC432y/Kq2LavgyO4SVDU+nCY=" "dijkstra_mesh_planner";
  mbf_mesh_core = pkg "sha256-GmuQlfB/4M2WAbDJQYLDtZPqKFrk1APfG1AZfKRez5Y=" "mbf_mesh_core";
  mbf_mesh_nav = pkg "sha256-6hiz4x7Wx3CLbp6dYvDOVYEUSIfVBckZYfbfs5IL6aE=" "mbf_mesh_nav";
  mesh_client = pkg "sha256-ivpJEfNTKMdvaeUo5BALd3xWgS0VqU91/yt6q924w3U=" "mesh_client";
  mesh_controller = pkg "sha256-pkomKNKQWYeAlMfi9aDmJCw3172/AOsXGzTpgy6jyz0=" "mesh_controller";
  mesh_layers = pkg "sha256-8W5HSLDDKT6r3joVN4dimh2hU/A5pHwedQNEOcJHhdU=" "mesh_layers";
  mesh_map = pkg "sha256-hbcZx8/XKNJRObs3QWyp5e5Waa/djd5NMVwDh9BT+dw=" "mesh_map";
  mesh_navigation = pkg "sha256-iqJC/Re6269IJFptqE3UVfIoCy89JawCt6u0MnVqy7A=" "mesh_navigation";
}
