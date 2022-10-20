{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "boschresearch";
    repo = "fmi_adapter";
    rev = "ed8235c22f04512751ef7e31c2ef200d292722e6";
    hash = "sha256-0BkqOeyAP2Xx++t27Hou1oJP3XV2incZe/UJdR6bFN4=";
    name = "boschresearch-fmi_adapter-ed8235c22f04512751ef7e31c2ef200d292722e6";
  });
in
{
  fmi_adapter = pkg "sha256-J7ki4QnrzwL+dfWBiM3mpvgzpOsWMftfd96025RmHS8=" "fmi_adapter";
  fmi_adapter_examples = pkg "sha256-vMeNdWmjucn8ZM2ReMjUR9P3TI7KODdr0GgeJOYNQvg=" "fmi_adapter_examples";
}
