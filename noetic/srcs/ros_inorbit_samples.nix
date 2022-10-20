{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "inorbit-ai";
    repo = "ros_inorbit_samples";
    rev = "42cf7719ccd037a00df413ea24ffa64194050ef2";
    hash = "sha256-kL5zcDBVI9zSkArHIQSDxjtfNEC4QAxeUPTZXGdnSx4=";
    name = "inorbit-ai-ros_inorbit_samples-42cf7719ccd037a00df413ea24ffa64194050ef2";
  });
in
{
  inorbit_republisher = pkg "sha256-Bv0QQ3O6DuPCm+5E4cCDRiU+Wc4GuVMtS/BCP879aYk=" "inorbit_republisher";
}
