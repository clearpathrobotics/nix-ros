{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "mrpt_navigation";
    rev = "c9f2f325a6214d84b3d6c3bae9654ff1884b0875";
    hash = "sha256-f4gdMqq0jFGH6McdAXEx1qVONeWTbT3z6vEzEvo/IaM=";
    name = "mrpt-ros-pkg-mrpt_navigation-c9f2f325a6214d84b3d6c3bae9654ff1884b0875";
  });
in
{
  mrpt_local_obstacles = pkg "sha256-+XelWhmpNWGN2VPwsYxvnDqE5n0evaT4N/G8w9QpAgk=" "mrpt_local_obstacles";
  mrpt_localization = pkg "sha256-WK/jEAj5/7TRKeD8CYbsiRu8Ml899vp6vHzBBeyX1+M=" "mrpt_localization";
  mrpt_map = pkg "sha256-0VWwpoSZgzA1cZocIAF4xo/YhA0sLN6mGYnze8K+YOw=" "mrpt_map";
  mrpt_msgs_bridge = pkg "sha256-dVjKauDC+Ln4glEsjm6Ecq5I6DjaKqn+Lavuj+rh7F4=" "mrpt_msgs_bridge";
  mrpt_navigation = pkg "sha256-uiNJN999GkU9rDHDzD2qXEkyOiOiZr0Y4OhEKU/AfPc=" "mrpt_navigation";
  mrpt_rawlog = pkg "sha256-uuhErd4GPirrV6bwgHc6quoRNFP7wFAi7NEsaV9JfNw=" "mrpt_rawlog";
  mrpt_reactivenav2d = pkg "sha256-dUdn7k6NmRqU+epcTmEkWezxr1pqlq9LjxiNQgNnhoY=" "mrpt_reactivenav2d";
  mrpt_tutorials = pkg "sha256-aDAE+hDZ5XU1ELITVpiKAnXbhV+H9FWx3euVqFjfXVo=" "mrpt_tutorials";
}
