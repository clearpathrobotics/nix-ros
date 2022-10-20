{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_traffic_editor";
    rev = "690ae9571bd6762235892eff2f42669797eb67ce";
    hash = "sha256-cEtHdGgkr7PB0guVExvkrUvBjWGoy12Wh+nbzx750Gg=";
    name = "open-rmf-rmf_traffic_editor-690ae9571bd6762235892eff2f42669797eb67ce";
  });
in
{
  rmf_building_map_tools = pkg "sha256-R3OdYn3Pt4BhErSh5Ho4DSXo7fiUZPJfpyRFl1QJnfU=" "rmf_building_map_tools";
  rmf_traffic_editor = pkg "sha256-F7lsDXbgkyk34eElRf3Jtad362mk23VzKV50z1K3dm4=" "rmf_traffic_editor";
  rmf_traffic_editor_assets = pkg "sha256-TKZhM4uLABKbT3jKDyqAZKHqMTMLnoeQ9fTWYrCyrRc=" "rmf_traffic_editor_assets";
  rmf_traffic_editor_test_maps = pkg "sha256-96w4LTBHRpHTdCA3ZUJSuLlp+ipFCdKBGdca1oNeVK0=" "rmf_traffic_editor_test_maps";
}
