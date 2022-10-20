{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "phidgets_drivers";
    rev = "fda20e7139d522c32736bbb3d9865d6378f0b8ac";
    hash = "sha256-/yE6uGqb0ddmtO4H3wv0PVs7zPSCR7IHMxvwDdvfZ0Q=";
    name = "ros-drivers-phidgets_drivers-fda20e7139d522c32736bbb3d9865d6378f0b8ac";
  });
in
{
  libphidget22 = pkg "sha256-SeGEXyxucbiI90oDspywD9hKAirKkyg9r8H/sVrQz5k=" "libphidget22";
  phidgets_accelerometer = pkg "sha256-D2N//FAsxgXRJqoIve2KB2oXOuxVW3pETiToweKpfL8=" "phidgets_accelerometer";
  phidgets_analog_inputs = pkg "sha256-749fOLYRrWRLF9TYqKUEpChZnWR2HVRkvuPJSYyGp5E=" "phidgets_analog_inputs";
  phidgets_analog_outputs = pkg "sha256-Qf/aqMSei63sLcXNVEJJ3MKQ1T3i7mqtOFnMJ9Xbtw8=" "phidgets_analog_outputs";
  phidgets_api = pkg "sha256-VBhOSKFerVK3nHiSe41KlQZgMEqZvhfcy2avEZtDs/8=" "phidgets_api";
  phidgets_digital_inputs = pkg "sha256-l+fPDk20X6rpvUnufH+xelveT0tSJWoYRJiOwO9jqwk=" "phidgets_digital_inputs";
  phidgets_digital_outputs = pkg "sha256-s9IuxnAYQiSguUCdAx1kvJRnwZIQ5QvY49xVx3VlEWE=" "phidgets_digital_outputs";
  phidgets_drivers = pkg "sha256-MY9Dgm/KwGJQa48dlLkgHl/G2KWnEXWiSPdYrI40enk=" "phidgets_drivers";
  phidgets_gyroscope = pkg "sha256-vLkZ5uLEmtoRk/hfWk+LnGlIS5DLJ5UCVYLTD6f2KJE=" "phidgets_gyroscope";
  phidgets_high_speed_encoder = pkg "sha256-yRVocvkB4MQGs7QZylhH4q+9TosQ0hqBykuArtjjT5c=" "phidgets_high_speed_encoder";
  phidgets_ik = pkg "sha256-W14PmxwGfepyjsqbSJhllrU/x7SLSKWRUI7NeeaPLrs=" "phidgets_ik";
  phidgets_magnetometer = pkg "sha256-3y76z8WqPT0DwlqQbU3mUIuyWi0cdpkr865Rr8sSudY=" "phidgets_magnetometer";
  phidgets_motors = pkg "sha256-+a6xui7X94Qmkf9c2Jm1Lwp/e+GCkT6FLP9pCyOYGZk=" "phidgets_motors";
  phidgets_msgs = pkg "sha256-lDF/q/tDz7qdxqLMwPZNupk4NHwZUwzjHeD3ACCwf4U=" "phidgets_msgs";
  phidgets_spatial = pkg "sha256-mY6ashvQsPgPuHd9CWfZ/qOv/i11JJQAUpPLI6Qo54Y=" "phidgets_spatial";
  phidgets_temperature = pkg "sha256-hGPG/FPavJhxrBEDmpFN4LfFv6wjfK0t+NwMGvTwlCQ=" "phidgets_temperature";
}
