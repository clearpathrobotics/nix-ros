{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_resources";
    rev = "ded1d5a09158e04b37b5eb521534cfd88967b0ed";
    hash = "sha256-KTTgnYAW4/Dn5S3SCdGOZjzt4exfv3vgfPgczfZfn/Q=";
    name = "ros-planning-moveit_resources-ded1d5a09158e04b37b5eb521534cfd88967b0ed";
  });
in
{
  moveit_resources = pkg "sha256-6SeNklZ6FV3leAPoweE7scYHip2GWoiT6Wl6A5NywNI=" "moveit_resources";
  moveit_resources_fanuc_description = pkg "sha256-hGTrUYAikxOi8egxDimAoqOcoKHW8F0RW1t6vuYewIA=" "fanuc_description";
  moveit_resources_fanuc_moveit_config = pkg "sha256-cJ3DCFtICWq9luUEgd9v2OoVJXMLFgFmrFeLKU6C69s=" "fanuc_moveit_config";
  moveit_resources_panda_description = pkg "sha256-9T8wcYBgF1ulNpNXqhBZxswjqvzNOtlDJsno0T83VJ0=" "panda_description";
  moveit_resources_panda_moveit_config = pkg "sha256-wEOIE23EK/DPdbQGlraw/P6SlXtc9dpSmf2WGov8rm8=" "panda_moveit_config";
  moveit_resources_pr2_description = pkg "sha256-kZjnvlnHY5J6SQdLGAteN6dfi19Sb8JVRlYa5yrrDFs=" "pr2_description";
}
