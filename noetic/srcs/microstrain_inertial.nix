{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LORD-MicroStrain";
    repo = "microstrain_inertial";
    rev = "0f32cc93a342bf53e8f0e22dbc414b6fff740034";
    hash = "sha256-smIcdX3UHBSwDiY2W7m5cVRRAgI4KILh4eR6nvTZ/N0=";
    name = "LORD-MicroStrain-microstrain_inertial-0f32cc93a342bf53e8f0e22dbc414b6fff740034";
  });
in
{
  microstrain_inertial_driver = pkg "sha256-mFQ+gsYQLaWASYU+IVV+QRaPqYowBI5NjNW4SHptLf0=" "microstrain_inertial_driver";
  microstrain_inertial_examples = pkg "sha256-NCfn3WpTLbGK0so/7QRDJ2gTquXx1UQbsz66CzeslLg=" "microstrain_inertial_examples";
  microstrain_inertial_msgs = pkg "sha256-RAnyheZ0+zPMajAwpLCw973kKym9mPiWH7R+BadtSuc=" "microstrain_inertial_msgs";
  microstrain_inertial_rqt = pkg "sha256-Wjh+fgRJsRCoVqHBaHHWaiQQ30INlFo9BNvt5I4rXgY=" "microstrain_inertial_rqt";
}
