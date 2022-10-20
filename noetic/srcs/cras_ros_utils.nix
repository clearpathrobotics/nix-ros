{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ctu-vras";
    repo = "ros-utils";
    rev = "3e9cf2421475537baaead9ff95e57fb4f8bd263e";
    hash = "sha256-KS/7tKl3ufTX46kSio4XI8t9QN1spxuwc05Lws1iMfI=";
    name = "ctu-vras-ros-utils-3e9cf2421475537baaead9ff95e57fb4f8bd263e";
  });
in
{
  camera_throttle = pkg "sha256-eJw1V1Lf5caEYDDJXG3+8CG6n703TL4WzwK2Y9eQVqo=" "camera_throttle";
  cras_bag_tools = pkg "sha256-kVtacKX1CgLLmDX7fKbB3sfRVUgszRj2URwme4ruOoI=" "cras_bag_tools";
  cras_cpp_common = pkg "sha256-RRdMPRM+4YnSRuA5nE+5m4EVCmxfC00cdSMhvUqlE0o=" "cras_cpp_common";
  cras_py_common = pkg "sha256-X1FO0KHiw6IDRltLRdzoYZvEFKt+h75RYAf5JBD+4eQ=" "cras_py_common";
  cras_topic_tools = pkg "sha256-pFMhkPjqPlTSc/t1E0R4idZN2I1kF0w6oOm/Aoe9lrs=" "cras_topic_tools";
  tf_static_publisher = pkg "sha256-WuDAgvRDDkULzrZrQuHL1lvRmuOktd8EGuHtBO5aS7I=" "tf_static_publisher";
}
