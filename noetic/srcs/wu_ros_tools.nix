{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "DLu";
    repo = "wu_ros_tools";
    rev = "f57e7f07f69cdd244d4bc9449bfc82239ba16e12";
    hash = "sha256-ja2Pi+Ka0ONlQZc6gH+st8Djt1ENCw3BKL4ZqoP92rE=";
    name = "DLu-wu_ros_tools-f57e7f07f69cdd244d4bc9449bfc82239ba16e12";
  });
in
{
  easy_markers = pkg "sha256-nEtiZ8GJns+g9bvQerxmJaM8SFzmthmI4Ss3DAoR5+s=" "easy_markers";
  joy_listener = pkg "sha256-9tIrXl9pGLfxbU6qAPirNIMEkQv95fyz9092oC58Zjg=" "joy_listener";
  kalman_filter = pkg "sha256-NKYbf+Ii+Whgl9rEaZCmNDMJktWY0RNybPCRjASFArE=" "kalman_filter";
  rosbaglive = pkg "sha256-QBKk100Ipgq516JeQSSfRvzpVlgVxmIKx5EfDHWXU5M=" "rosbaglive";
  wu_ros_tools = pkg "sha256-cNFm8HuE5hjr8cPWZqxqgC7iKMfouY2gOlF6vmuxL9o=" "wu_ros_tools";
}
