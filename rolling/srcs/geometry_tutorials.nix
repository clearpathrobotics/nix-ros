{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "geometry_tutorials";
    rev = "c2667c206c791a90f3f2971a3f37efe9a99eb696";
    hash = "sha256-UUn35OSGwBaY63QfLFLMi1+i9X6bAloIBi93FWwhAJc=";
    name = "ros-geometry_tutorials-c2667c206c791a90f3f2971a3f37efe9a99eb696";
  });
in
{
  geometry_tutorials = pkg "sha256-Cy6+rG9fkARM6Pr7xFDRN/CEObs8kkLsxj+qr4W2h0U=" "geometry_tutorials";
  turtle_tf2_cpp = pkg "sha256-3YFADhVwR5/E6GJLgLCIB5LOL3HcU1jDNul0TmStoY8=" "turtle_tf2_cpp";
  turtle_tf2_py = pkg "sha256-uANREt6Obab0xtTMzUIOfNhR/7c4WVWtMBrZFG69BX8=" "turtle_tf2_py";
}
