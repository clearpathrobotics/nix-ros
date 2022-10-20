{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "phidgets_drivers";
    rev = "acf156abba265a2020665c0e12d7176b3c2e6a46";
    hash = "sha256-mVq0heT5Ov4eGDzBn4RsnNU7MxKZI1yp6lkM39xyABA=";
    name = "ros-drivers-phidgets_drivers-acf156abba265a2020665c0e12d7176b3c2e6a46";
  });
in
{
  libphidget22 = pkg "sha256-GSe+j+FQUqkURPbpdDRFr6ehzfbsb+viTisUcqVZs4g=" "libphidget22";
  phidgets_accelerometer = pkg "sha256-ZZ38MAd5LLwpkOcc0xySyAADOtKfbo1UhCbo3xHUHf4=" "phidgets_accelerometer";
  phidgets_analog_inputs = pkg "sha256-gL8HOdwoDA0GqMihsxhlj6gh6+u81FDWe5OHmNjkpWE=" "phidgets_analog_inputs";
  phidgets_analog_outputs = pkg "sha256-PI+z2KRkZ4v0l5sAti/6IYoQah06RTh4aA1sXrt7P6s=" "phidgets_analog_outputs";
  phidgets_api = pkg "sha256-b+ERxwV0zpW+FlfcC+hq66xtVs4Mrmy3aHeRT2I59XQ=" "phidgets_api";
  phidgets_digital_inputs = pkg "sha256-e4bvL+yTdSX8se9BLUOEEjUGo21Yyz6MSg7BhPOc7Aw=" "phidgets_digital_inputs";
  phidgets_digital_outputs = pkg "sha256-zOFyZkgcW26GCITyhA5OlHtMEp2iOOtVV3tVFdq6fNg=" "phidgets_digital_outputs";
  phidgets_drivers = pkg "sha256-e7a4VL3O/iO56J1ltHQdTNbdIM7PUNt7vA8k8mrxb/M=" "phidgets_drivers";
  phidgets_gyroscope = pkg "sha256-+mhlfdRHl7101Ao2qYW3ogNPpHsjeInSXyYSx1915bs=" "phidgets_gyroscope";
  phidgets_high_speed_encoder = pkg "sha256-dsxanJZdDiTWtlSUgDzXZWvzc6uCFf/qVV7s5zyF+ys=" "phidgets_high_speed_encoder";
  phidgets_ik = pkg "sha256-xV9s5q10/6CJKEdpCngj3LGli0cIFUgZLgHAdqUjgpY=" "phidgets_ik";
  phidgets_magnetometer = pkg "sha256-YG+rzCkh8JuJ+3squICUuWd97KP/uZQ7JW9+r/teKow=" "phidgets_magnetometer";
  phidgets_motors = pkg "sha256-CJ15pEIC0w/oEqLyGVnrQZqm/k6hjHTUfobsw9vaRcA=" "phidgets_motors";
  phidgets_msgs = pkg "sha256-0hXndNdvC2qxkdPLnkFwcmE+aTOIyLZP3XopxIls9dc=" "phidgets_msgs";
  phidgets_spatial = pkg "sha256-Kp1BaQKjpaOh8SZWo/h8mLTA4ZfYszHCYd0vY8xqtNI=" "phidgets_spatial";
  phidgets_temperature = pkg "sha256-ysJlA4vNbW2mfoCNFXJTIwEJO0N44VHIUqHeOAi0BL0=" "phidgets_temperature";
}
