{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fzi-forschungszentrum-informatik";
    repo = "lanelet2";
    rev = "315eca650d2de93422048b9846d9a579925b4f66";
    hash = "sha256-CzTYsuHsWRXDDlE5V17meLJzcMDouiri6Ton4NbkRd0=";
    name = "fzi-forschungszentrum-informatik-lanelet2-315eca650d2de93422048b9846d9a579925b4f66";
  });
in
{
  lanelet2 = pkg "sha256-fbvPjLxv/q4Jh+C9MxtemjN1fLuvF68eyxYfVzNNHFA=" "lanelet2";
  lanelet2_core = pkg "sha256-8rX6zlM3VmNcdcQ/0IK6eDDJisiLt3yDYA1aCVixHp0=" "lanelet2_core";
  lanelet2_examples = pkg "sha256-a5SMTWfeO1JzxWsqBjKJwgymcgkAbCBezd+/EDBoqVM=" "lanelet2_examples";
  lanelet2_io = pkg "sha256-Zm2vE5WjZCDrGDDeZrviPbih6xBTHH2gaTuWWzaAc2Y=" "lanelet2_io";
  lanelet2_maps = pkg "sha256-6EJPX1FXwTX/S9mbVVU5T6Lgv4UC+v/7Wxg/ZW9zfEo=" "lanelet2_maps";
  lanelet2_matching = pkg "sha256-Uv9d/n4V66h3ci3NvQ6ZGwX8bqSuwVgz44RdL5e2cGk=" "lanelet2_matching";
  lanelet2_projection = pkg "sha256-lVSL8kW3HAlQHovGL5J7OC1byzTyGtfAYGDdz1wfPfY=" "lanelet2_projection";
  lanelet2_python = pkg "sha256-7VKq/nQxqXkTpv9896GAmUCDPaKpSuqWfMMMhhAq9qA=" "lanelet2_python";
  lanelet2_routing = pkg "sha256-0FWVsI4Q4dIH5BnkVeqvz5aexozcF8y+xhiLquZ8KG4=" "lanelet2_routing";
  lanelet2_traffic_rules = pkg "sha256-0AXPcw6dCqhdene8/Kh2GmMN91kU8vWdBeWlpZhzyoE=" "lanelet2_traffic_rules";
  lanelet2_validation = pkg "sha256-FLYX49BTKajqlQ69TXVnqo8CfDaofNz1ojUiVkBQ1ss=" "lanelet2_validation";
}
