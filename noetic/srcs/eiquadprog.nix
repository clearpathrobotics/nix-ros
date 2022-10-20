{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "eiquadprog";
    rev = "104fc9234de1f1be8af3b311f1c39574d4c046ff";
    hash = "sha256-v8ezDNQuJdvR7zxiPcPNq1FsfUJzQIs6B8fXSUxfF10=";
    name = "stack-of-tasks-eiquadprog-104fc9234de1f1be8af3b311f1c39574d4c046ff";
  });
in
{
  eiquadprog = pkg "sha256-v8ezDNQuJdvR7zxiPcPNq1FsfUJzQIs6B8fXSUxfF10=" ".";
}
