{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eclipse-iceoryx";
    repo = "iceoryx";
    rev = "f756b7c99ddf714d05929374492b34c5c69355bb";
    hash = "sha256-TPVm8N05UC/DSiiPLS3n7qTHmks0hIkrn7yrAgEXUSI=";
    name = "eclipse-iceoryx-iceoryx-f756b7c99ddf714d05929374492b34c5c69355bb";
  });
in
{
  iceoryx_binding_c = pkg "sha256-bYKtG1mrp/9TmmCt2BRAtbAsvOY5zYMpTKhZNuniXcg=" "iceoryx_binding_c";
  iceoryx_hoofs = pkg "sha256-Rp1PfAjOoTn1F97oI/pkwePNPqZ2GOmbh/M5RwIgHvU=" "iceoryx_hoofs";
  iceoryx_posh = pkg "sha256-P4HeIkdRap//axiH0seXCvNf5vCYpd2eImkztWl275M=" "iceoryx_posh";
}
