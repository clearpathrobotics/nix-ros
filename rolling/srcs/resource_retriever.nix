{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "resource_retriever";
    rev = "958589636d0d72a8e4161ccf00b2d7d171a51875";
    hash = "sha256-/bzvwW8ErAGQdDSdUtimBA/BnxTm6n76MOxVKcwCI48=";
    name = "ros-resource_retriever-958589636d0d72a8e4161ccf00b2d7d171a51875";
  });
in
{
  libcurl_vendor = pkg "sha256-eLlK3LDH/OMaW/CGsvt0Xo/VDHlX/KYOVqFXSzY3pgQ=" "libcurl_vendor";
  resource_retriever = pkg "sha256-7wMago9Z271s38E0+pRUuJOUBP7D2q/1ojurnEKO/Qw=" "resource_retriever";
}
