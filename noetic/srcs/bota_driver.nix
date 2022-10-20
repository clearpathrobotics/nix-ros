{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "botasys";
    repo = "bota_driver";
    rev = "e4f16c695edec4e75e964ce165c7697214017d65";
    hash = "sha256-3wIJxyyARg3SpIgOI2SrEGy4wRXp1MXqjxFeJcWxxeA=";
    name = "botasys-bota_driver-e4f16c695edec4e75e964ce165c7697214017d65";
  });
in
{
  bota_driver = pkg "sha256-L1cOlRx//hkYUmRfw6Yly+7dlsdO2y3zbcgMKkWFLjA=" "bota_driver";
  bota_driver_testing = pkg "sha256-xzwxHY1lcoiJUXqN9kxX74YJTXrq27uwjjzomeCXHe4=" "bota_driver_testing";
  bota_node = pkg "sha256-vj8Q119iYA9CdHXjMGYhmqvGq0Mv483lTA91DHhzQjA=" "bota_node/bota_node";
  bota_signal_handler = pkg "sha256-eWIdAHHzuY7guKdfwvPXcGsqVNZSrkBXXFSYk6yRoek=" "bota_node/bota_signal_handler";
  bota_worker = pkg "sha256-Q2zcxeFdstnnTyx2DJqxbvsYNHQLIhvsrlYs0tSiEW0=" "bota_node/bota_worker";
  rokubimini = pkg "sha256-w8u6itDq2pgUYiLWcGFq0t1fHgGZUp/k2DrFXyNoyf8=" "rokubimini";
  rokubimini_bus_manager = pkg "sha256-I/7ya6O+y07fV2n2Io420EZFCaN5n1Ho0mKaApFZO4E=" "rokubimini_bus_manager";
  rokubimini_description = pkg "sha256-QKw2nbnT+IKxepso54USEtRSAenEcvHMWaHNvZug8/U=" "rokubimini_description";
  rokubimini_ethercat = pkg "sha256-MizMneeUmDDKEyUj4NA0Kg0F2rLGWPh7HbjFZGDL2mI=" "rokubimini_ethercat";
  rokubimini_msgs = pkg "sha256-hQrCkInYk8n3ZdJwBaPlpwsgjq0Y1EfGQ3rSXSOb8Sg=" "rokubimini_msgs";
  rokubimini_serial = pkg "sha256-s2xzSiv53Agdh3EDbHlTLX8RPqqD0yB3x58zGFudodI=" "rokubimini_serial";
}
