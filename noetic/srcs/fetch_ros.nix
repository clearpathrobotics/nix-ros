{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "fetch_ros";
    rev = "42b4d8199abbfab04aceea28a0ea4c9dab54667a";
    hash = "sha256-7gM6wYKM5JQqoS3H6WQtLn4mo9+FYm3aOmCKg/ePOIA=";
    name = "fetchrobotics-fetch_ros-42b4d8199abbfab04aceea28a0ea4c9dab54667a";
  });
in
{
  fetch_calibration = pkg "sha256-gJ07FB3Sd+igl7vg/QBDKCz1vSLrxJhR8EzeqRu46aE=" "fetch_calibration";
  fetch_depth_layer = pkg "sha256-8S/AnxtezsLI7dDfrvPZCzix/8tOj1WBA4RVD3McCX0=" "fetch_depth_layer";
  fetch_description = pkg "sha256-QdaHLnT9f/lFvTQNBJEeu4mN3DWI/RIpu17vwTmNllI=" "fetch_description";
  fetch_ikfast_plugin = pkg "sha256-GixA1WChN6MD05RJ+HialWmiDv1glyj/YG03WgaaQC4=" "fetch_ikfast_plugin";
  fetch_maps = pkg "sha256-Vz/V1nh53BKPB/EWB3sjHFp+tc7XVHdd1V1M+eYAbzA=" "fetch_maps";
  fetch_moveit_config = pkg "sha256-oX1eF+OwQpu6ju9N9kH0oASegqesALkuwUs355Wr3Mk=" "fetch_moveit_config";
  fetch_navigation = pkg "sha256-DitF4yuoFStq+ol9Sawm+i0rpbFgr3wycfwd05xHi8E=" "fetch_navigation";
  fetch_ros = pkg "sha256-ZioIN7LurAdiKv+JNH5gM/1KFDx3gCbp+VFAyshH7N4=" "fetch_ros";
  fetch_teleop = pkg "sha256-pHIDLwZOnf7g5z+sJ3gIG26YfJoEnwDvnJOb1a3n6AE=" "fetch_teleop";
}
