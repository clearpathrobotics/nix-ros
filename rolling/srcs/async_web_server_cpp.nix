{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fkie";
    repo = "async_web_server_cpp";
    rev = "a12cd9cec5e1906a6ba8142de73694c860c94ee7";
    hash = "sha256-Cj2zhgfRL9Yh8TtjLL4sBdA28HLr2ZCHAOZMMZvxmcM=";
    name = "fkie-async_web_server_cpp-a12cd9cec5e1906a6ba8142de73694c860c94ee7";
  });
in
{
  async_web_server_cpp = pkg "sha256-Cj2zhgfRL9Yh8TtjLL4sBdA28HLr2ZCHAOZMMZvxmcM=" ".";
}
