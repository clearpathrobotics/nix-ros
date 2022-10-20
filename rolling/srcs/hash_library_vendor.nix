{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "hash_library_vendor";
    rev = "2cce0d68465e6793d725ef9be73752f5fbcea1c5";
    hash = "sha256-CgVSa8Pf9w8JkTb0ZCljX8pY5E6hiId+1/WWKo2ebRE=";
    name = "tier4-hash_library_vendor-2cce0d68465e6793d725ef9be73752f5fbcea1c5";
  });
in
{
  hash_library_vendor = pkg "sha256-CgVSa8Pf9w8JkTb0ZCljX8pY5E6hiId+1/WWKo2ebRE=" ".";
}
