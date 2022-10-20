{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "variants";
    rev = "744efb3c828f27253cea4172fbd0a8f4240182c8";
    hash = "sha256-pY3BkzDcY5gLIxVpuo/M8/vkqaHnOCWCfUI7aLlXmfw=";
    name = "ros2-variants-744efb3c828f27253cea4172fbd0a8f4240182c8";
  });
in
{
  desktop = pkg "sha256-Oe0Gi0EAbvTGmyy7KyrLQqqS5ZVrp2Tdkdx4F82uVqw=" "desktop";
  desktop_full = pkg "sha256-Fpf8KQVw8ZcNqmf/8VyrlxunQpvxC9fZZHZVUBkM4IU=" "desktop_full";
  perception = pkg "sha256-c9lGVLwPCuMSbgiHggs37sSu7II5YKdn0ruTBwk2wMs=" "perception";
  ros_base = pkg "sha256-qTPrFPcFntKAifYcXqjryFyhWK0SgTD9g57SPOb7S9U=" "ros_base";
  ros_core = pkg "sha256-Oq1qKMDCrNKnoDWlaZtBuCMhiDEWEaPoyvkumjxWuFg=" "ros_core";
  simulation = pkg "sha256-bvicFtHnIqmwZPfpdtNprdkWQWqSKGs+cezebLL0sUs=" "simulation";
}
