{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "at-wat";
    repo = "neonavigation_msgs";
    rev = "5a0fc108992cc157b44af2ee9bc2bba00698174c";
    hash = "sha256-6vrVrxS5WAU/aDkv/IqV1B3BVWHVCbCkNBrICgfKz9Q=";
    name = "at-wat-neonavigation_msgs-5a0fc108992cc157b44af2ee9bc2bba00698174c";
  });
in
{
  costmap_cspace_msgs = pkg "sha256-6OGv4K72I9OpmGPkHvbwAQoxOCGeDfL1MKi949m7Mng=" "costmap_cspace_msgs";
  map_organizer_msgs = pkg "sha256-rZpSv0ZSf/+NVBEbH0TEr0ruQ199Ysw2i9KX4EmRoBA=" "map_organizer_msgs";
  neonavigation_msgs = pkg "sha256-IzhmRsAv+M3UuUv6r85eGECpJzIhbm9bZQ4vV5U6gl4=" "neonavigation_msgs";
  planner_cspace_msgs = pkg "sha256-kuD/BCIgSeSXxiDAhQqYxUHoewDA+EyMJzJd5VqbqYQ=" "planner_cspace_msgs";
  safety_limiter_msgs = pkg "sha256-4zp3wg7ztgsC9PLA7nPHug33csCCXnvHD4aDKEWkTOk=" "safety_limiter_msgs";
  trajectory_tracker_msgs = pkg "sha256-9j2zGOD1HAUO87Kzdt415rxxL7vwsdoebNYlmUF1QA8=" "trajectory_tracker_msgs";
}
