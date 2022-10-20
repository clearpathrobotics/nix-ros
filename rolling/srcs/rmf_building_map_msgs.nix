{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_building_map_msgs";
    rev = "023c54dcbaff1399b1c092915b56ca7d088f8d29";
    hash = "sha256-57wMxmzo28SuC5zDiyf4VHjLC1oqWmERmtRZRALRkFU=";
    name = "open-rmf-rmf_building_map_msgs-023c54dcbaff1399b1c092915b56ca7d088f8d29";
  });
in
{
  rmf_building_map_msgs = pkg "sha256-O1rJ6oL5gN6XSUfxAAzIvVIW71dOo1/LGTZIXlzrfks=" "rmf_building_map_msgs";
}
