{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nobleo";
    repo = "rx_service_tools";
    rev = "d0118fafc6c3e3aeec4bf54e4a0f983c46a45d2f";
    hash = "sha256-vBrRppljQZhwKQ4qY4c1QCarxZSJkzP11mmwBuI3DXU=";
    name = "nobleo-rx_service_tools-d0118fafc6c3e3aeec4bf54e4a0f983c46a45d2f";
  });
in
{
  rx_service_tools = pkg "sha256-vBrRppljQZhwKQ4qY4c1QCarxZSJkzP11mmwBuI3DXU=" ".";
}
