{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "boschresearch";
    repo = "fmi_adapter";
    rev = "321c7bf84a8972c3dbcb6a83ab671a119ae9cfec";
    hash = "sha256-4S46r9ckxUJaa2mRkFp86vCzmVxoWUwOlOTV3uOmvgQ=";
    name = "boschresearch-fmi_adapter-321c7bf84a8972c3dbcb6a83ab671a119ae9cfec";
  });
in
{
  fmi_adapter = pkg "sha256-+WxcHF21ppNEv5DD/YuQp4iTgr0WuplAjmUQ/sBz3ec=" "fmi_adapter";
  fmi_adapter_examples = pkg "sha256-R5kjXvGqUx+ux+q1zgh54sd5aNSXWSJ1edV01iOh5Fc=" "fmi_adapter_examples";
}
