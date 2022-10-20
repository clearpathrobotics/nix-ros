{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "dingo-cpr";
    repo = "dingo";
    rev = "1d5daed95a943729c5bf777db5ea36b7e230276a";
    hash = "sha256-l23ZU2aWp5e4FLtxWDwXASpjZhrEkzDnnhpddILor8Q=";
    name = "dingo-cpr-dingo-1d5daed95a943729c5bf777db5ea36b7e230276a";
  });
in
{
  dingo_control = pkg "sha256-o+Het11oFvbzlSF/6ZpsyPo/COvU2wvjwHRV8wWanBE=" "dingo_control";
  dingo_description = pkg "sha256-LCqPesB0AlyE3xcO8ugZORXoeNpiTPqJVwcTdUqpH2o=" "dingo_description";
  dingo_msgs = pkg "sha256-b6x8KJqZ54TKBUS9wDbXKKjrMXIht2GlsFg19cB87no=" "dingo_msgs";
  dingo_navigation = pkg "sha256-L+ko+arxQr9yoyVfnRMUcXRh8mqez6goUMh6fVMZbG0=" "dingo_navigation";
}
