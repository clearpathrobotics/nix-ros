{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "mikrotik_swos_tools";
    rev = "4a74134fa65b6f557e0c9952b26866f877d29149";
    hash = "sha256-hDlFaCX5XMRPn8JHcbovhY608LICGVRBKvUDopb24Bw=";
    name = "peci1-mikrotik_swos_tools-4a74134fa65b6f557e0c9952b26866f877d29149";
  });
in
{
  mikrotik_swos_tools = pkg "sha256-hDlFaCX5XMRPn8JHcbovhY608LICGVRBKvUDopb24Bw=" ".";
}
