{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_simulation";
    rev = "b6300344756ae3cc667a90f7638f0f693a4bf38b";
    hash = "sha256-wDM7k50YoPh0WDqN9puRRotvJtZyXUtBDuyLQ/rtlik=";
    name = "open-rmf-rmf_simulation-b6300344756ae3cc667a90f7638f0f693a4bf38b";
  });
in
{
  rmf_building_sim_common = pkg "sha256-H0kce2vyve0kPFMcL3X9FhhyNeTE/tqygfIpFS4RX6Q=" "rmf_building_sim_common";
  rmf_building_sim_gz_classic_plugins = pkg "sha256-UF+uYVAHBbZ67SJmEclPJ7wJuzvlDaOYrrsSpD0vAco=" "rmf_building_sim_gz_classic_plugins";
  rmf_building_sim_gz_plugins = pkg "sha256-M21sJ6GFTsN2BbyJhckt2y7N4CoNRiiVsYTwI5JDgAk=" "rmf_building_sim_gz_plugins";
  rmf_robot_sim_common = pkg "sha256-Bqf0WvJdeaUGOfOXykIsirPcpLFIzDu9iCY+5F0CfxA=" "rmf_robot_sim_common";
  rmf_robot_sim_gz_classic_plugins = pkg "sha256-U3r99aQlK3e1bGfYjuOopZgPJMSxb2l4mKu6dcLlceA=" "rmf_robot_sim_gz_classic_plugins";
  rmf_robot_sim_gz_plugins = pkg "sha256-7y1xESDfNzOE727OfwgxRQV0wTS1w7SYEZtohBMfizU=" "rmf_robot_sim_gz_plugins";
}
