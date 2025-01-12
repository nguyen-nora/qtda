<?php
require("../../index.php");

const URL = "http://localhost/projects/hstore";
const ACCESS_CONTROL_ALLOW_ORIGIN = "*";
const ACCESS_CONTROL_ALLOW_HEADERS = "Content-Type, Role";
const IMAGE_EXTENSIONS_VALIDATE = ["jpeg", "jpg", "jfif", "png", "gif", "webp"];
const VIDEO_EXTENSIONS_VALIDATE = ["ts", "mp4", "webm", "mpg", "mpeg", "mpe", "mpv"];
const LOCATION_UPLOAD_IMAGE = SITE_ROOT . "/upload/images/";
const LOCATION_UPLOAD_VIDEO = SITE_ROOT . "/upload/videos/";
const PATH_UPLOAD_IMAGE = URL . "/upload/images/";
const PATH_UPLOAD_VIDEO = URL . "/upload/videos/";
