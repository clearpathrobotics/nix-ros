{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "openspur";
    repo = "ypspur_ros";
    rev = "f51576ab3513b921f9c8d26c86059e13679c5540";
    hash = "sha256-2xkkrY48ofRrtkm2/yDMYmUerjO2mlQMqjeItSjRUvw=";
    name = "openspur-ypspur_ros-f51576ab3513b921f9c8d26c86059e13679c5540";
  });
in
{
  ypspur_ros = pkg "sha256-2xkkrY48ofRrtkm2/yDMYmUerjO2mlQMqjeItSjRUvw=" ".";
}
