{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ixblue";
    repo = "ixblue_stdbin_decoder";
    rev = "61d9ab4c4f8acbe7758d1f5a5dc3c69877b16237";
    hash = "sha256-WV/pr3y69I/HgjOFwHFslx1+MeGZ3VShxe4PMp6a86U=";
    name = "ixblue-ixblue_stdbin_decoder-61d9ab4c4f8acbe7758d1f5a5dc3c69877b16237";
  });
in
{
  ixblue_stdbin_decoder = pkg "sha256-WV/pr3y69I/HgjOFwHFslx1+MeGZ3VShxe4PMp6a86U=" ".";
}
