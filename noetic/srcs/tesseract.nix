{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial-consortium";
    repo = "tesseract";
    rev = "4a755a1910f41c7258dcf17c206f2a0abc3678e2";
    hash = "sha256-zuhEewi6/+zw0bL8IUUl3/HalnXAqYDQ5n+IWavRrMc=";
    name = "ros-industrial-consortium-tesseract-4a755a1910f41c7258dcf17c206f2a0abc3678e2";
  });
in
{
  tesseract_collision = pkg "sha256-NOA9NR4kyWXXRKNpj1PAKjKNkQ1OANPXkbyceUuAOF0=" "tesseract_collision";
  tesseract_common = pkg "sha256-7AGZmxm9Kp/VkAu+S/K9pNtk+XUYzCAJdfMwHxv3KFg=" "tesseract_common";
  tesseract_environment = pkg "sha256-ujyL6I/nVyZwrpcVlIpOCFnMNY3dBi4Xb8NRBL7xdpk=" "tesseract_environment";
  tesseract_geometry = pkg "sha256-bcXWZ6q836a5UVEXXdVe9jaxNZu3i/ybe8Wk/h5/u4g=" "tesseract_geometry";
  tesseract_kinematics = pkg "sha256-r6WGKlX92XDojhci0GgfNoIcI1AqPNqaNhPCRK9a0Hw=" "tesseract_kinematics";
  tesseract_scene_graph = pkg "sha256-aT0vCowk77In3Hx9kQnpkNreyTsgPzfTyrur3+zEEp8=" "tesseract_scene_graph";
  tesseract_srdf = pkg "sha256-PMytG+a/oT/+V+47wvcpXKuRYvf337x5rY6RJ5YNejI=" "tesseract_srdf";
  tesseract_state_solver = pkg "sha256-Y7UnksljTrBAbe9WnnTrs4zufNSAnWhL7uSCmHbK28U=" "tesseract_state_solver";
  tesseract_support = pkg "sha256-y1073V4r2h3V4isF/u5a1jui4F1L0Pck4t4B6jSqfLc=" "tesseract_support";
  tesseract_urdf = pkg "sha256-8ct+WBD3e+IUg+u7/W8NF4NNYDsG4cSPx6oI2Oev8Sk=" "tesseract_urdf";
  tesseract_visualization = pkg "sha256-VIR0IYHpVQcpDcXBCVU3l36AnBHpWxPY+yQv8Unq3gA=" "tesseract_visualization";
}
