{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_common";
    rev = "c36a5c9c8d5e97d2d53a7c75fa57a3257a7c63cc";
    hash = "sha256-gzH0wshxm5lp9eJfzbYwBN/63oNvT8TsIwKC8UZHGPk=";
    name = "pr2-pr2_common-c36a5c9c8d5e97d2d53a7c75fa57a3257a7c63cc";
  });
in
{
  pr2_common = pkg "sha256-nRXelHM0Ch/NlpPDDfUrb6IwU55CCbaAalhX/LqpXZw=" "pr2_common";
  pr2_dashboard_aggregator = pkg "sha256-jwWX2KShYOMNLypUEOTNTRjyzyyXfem8J+jop6mcoHs=" "pr2_dashboard_aggregator";
  pr2_description = pkg "sha256-jtVc3jkd7jkRnvizMI05nVQ0JbubUzVmzDbmRAU5lP0=" "pr2_description";
  pr2_machine = pkg "sha256-17o10Esp/xkazOyDsAvJ/HwHHZ3MAL3nahc6QGNjLNA=" "pr2_machine";
  pr2_msgs = pkg "sha256-ODekMftIC3ysPKUfCCGksc/tAVyure2rCl86gJAZvKc=" "pr2_msgs";
}
