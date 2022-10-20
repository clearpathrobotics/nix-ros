{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_implementation";
    rev = "8c3c133eb070a4f19259f027cc2cea720b28eff0";
    hash = "sha256-SwoJW/WK8XxewZTrRVZl4jRoOx5hVjAhpc0Zt04fbBo=";
    name = "ros2-rmw_implementation-8c3c133eb070a4f19259f027cc2cea720b28eff0";
  });
in
{
  rmw_implementation = pkg "sha256-V1xoBXp6FmS7E3xyXJ3AInnl3qhnmLj9GKNd9RyZLVg=" "rmw_implementation";
  test_rmw_implementation = pkg "sha256-k6XxlUMsBwTt4ikd74PALyzghGJCAYj8yT8MuSngENQ=" "test_rmw_implementation";
}
