{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "image_transport_plugins";
    rev = "f0afd122ed9a66ff3362dc7937e6d465e3c3ccf7";
    hash = "sha256-mNPM4zQgw6BTSoUpXw+lgS7MLVMJby+7fSD34iegesQ=";
    name = "ros-perception-image_transport_plugins-f0afd122ed9a66ff3362dc7937e6d465e3c3ccf7";
  });
in
{
  compressed_depth_image_transport = pkg "sha256-SSa7ZbcbJghr0VgQ4GgNAcjDoKGvHWD+DuTpGa4x45U=" "compressed_depth_image_transport";
  compressed_image_transport = pkg "sha256-c8L4wxfDZdTwsrmkxVKXahy9L5BSHzZf4X2uXl9v2YY=" "compressed_image_transport";
  image_transport_plugins = pkg "sha256-GGn3UGcTxSF0pdVG2PXJ/coq8niSaQ018td9dmx+gxI=" "image_transport_plugins";
  theora_image_transport = pkg "sha256-xmq63BJIHaH4EFA5J5TcH+tBI5YoZ9B3n4KkzTQk5sM=" "theora_image_transport";
}
