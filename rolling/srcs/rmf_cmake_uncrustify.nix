{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_cmake_uncrustify";
    rev = "74dd6e85cc7313d8944ce5e39dbac8c064506599";
    hash = "sha256-fardWP6WHCk0eXJhlIrIuy50HC2wd66wSvpJjGUCDnE=";
    name = "open-rmf-rmf_cmake_uncrustify-74dd6e85cc7313d8944ce5e39dbac8c064506599";
  });
in
{
  rmf_cmake_uncrustify = pkg "sha256-jlpSb6OTnvcAGPuk9z0vf2yA7lyxuZgIqeUhFx50jcA=" "rmf_cmake_uncrustify";
}
