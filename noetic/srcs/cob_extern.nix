{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_extern";
    rev = "c13af0b2ed96b5a238b512195b0fc893b61ebffb";
    hash = "sha256-mpu7FVRnY2OeSTrQupmzii5cnl1LEAfBMQcZeU8w0WM=";
    name = "ipa320-cob_extern-c13af0b2ed96b5a238b512195b0fc893b61ebffb";
  });
in
{
  cob_extern = pkg "sha256-iAe3gJIjpqdU8furIXfKjBnj3Wg8xo0uKkQEIuNk93I=" "cob_extern";
  libdlib = pkg "sha256-/12G3kgE+IpmwRKbX5LCM8lT9Akc9+tHWUJVU3NGK+o=" "libdlib";
  libntcan = pkg "sha256-2HOkhRos20M5Goh+9cpLkbWFR4W736+vh7zWLennG4Q=" "libntcan";
  libpcan = pkg "sha256-CRL7v02SKKXwJdlp2oT+81rSvVY482G6Sh5uhzG4Xk8=" "libpcan";
  libphidgets = pkg "sha256-2fJ7qdTQgQaFA7seFPxKuAKW8aM7JcD8kbqtKgpQM64=" "libphidgets";
  opengm = pkg "sha256-p1RXMVQJy9tqcb0bDjJzjStwlS08yUU8AMqCcNCAZ9A=" "opengm";
}
