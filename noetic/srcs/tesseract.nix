{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial-consortium";
    repo = "tesseract";
    rev = "015a9eb24b4f0eb2f3f6e4ae9f763976c49f4a8a";
    hash = "sha256-bI7FSIqf+0EQyw3Cf6Tr+P5T6g0k9l3eaLgb+2EbC54=";
    name = "ros-industrial-consortium-tesseract-015a9eb24b4f0eb2f3f6e4ae9f763976c49f4a8a";
  });
in
{
  tesseract_collision = pkg "sha256-06maVV8ib2PtGWx3FKQeNAhY4FzbRRfcjXY/gl2vL6s=" "tesseract_collision";
  tesseract_common = pkg "sha256-EdmzkDo6urFCA/Vk9tkgTWoKmJZrcD3Ud/R0zm9NbeI=" "tesseract_common";
  tesseract_environment = pkg "sha256-6GT73i6yes/Gj+mgwwBfBexRgcNswCvHe+pT2EJtJ5U=" "tesseract_environment";
  tesseract_geometry = pkg "sha256-yRGdil8jzHdK6TNpyutEgqjHRfSBHnZnMxGkSAjUBIE=" "tesseract_geometry";
  tesseract_kinematics = pkg "sha256-hQg8IolSyXEh0QzdOhOrKPe/v/cesGyaIxthGQyuMBI=" "tesseract_kinematics";
  tesseract_scene_graph = pkg "sha256-il/FdqXlEiJbR2x16emVPOaT9Z3y1cHUcp/hp4Uh8v4=" "tesseract_scene_graph";
  tesseract_srdf = pkg "sha256-LTvPMf7J6qHnX7GXFXRPc1FUvfZrjj/SzgR8q7XVHYw=" "tesseract_srdf";
  tesseract_state_solver = pkg "sha256-hDHh194AjqHQn3sP+LCY2ZClyEnYKE+ktmIzWGHPlD8=" "tesseract_state_solver";
  tesseract_support = pkg "sha256-fRAJMU13N8pI3mItIuQLdftImQqYIcqJqEd0jOxalP4=" "tesseract_support";
  tesseract_urdf = pkg "sha256-Q/UAefGjxQafrGavqQ5uyuxy7Y9w/LiHKnajXeePd2A=" "tesseract_urdf";
  tesseract_visualization = pkg "sha256-QM7llP3ehFTCtf8pQd+GEnPWxSBw1iacVRfeyIdw5BQ=" "tesseract_visualization";
}
