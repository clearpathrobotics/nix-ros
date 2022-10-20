{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "resource_retriever";
    rev = "49f42cd07dc5089421c19546b38de412e76347ee";
    hash = "sha256-6tP3Ek75/qzT0rbCGYswg/YU9vBA8tnXlQo6C/E5VPI=";
    name = "ros-resource_retriever-49f42cd07dc5089421c19546b38de412e76347ee";
  });
in
{
  libcurl_vendor = pkg "sha256-vS+eglyS5p5THjDyp/FqjBiikx0N5C3DYErbBiVIgoM=" "libcurl_vendor";
  resource_retriever = pkg "sha256-7wMago9Z271s38E0+pRUuJOUBP7D2q/1ojurnEKO/Qw=" "resource_retriever";
}
