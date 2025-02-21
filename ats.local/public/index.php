<?php
require_once __DIR__ . '/../config.php';
require_once __DIR__ . '/../core/Router.php';

$path = parse_url($_SERVER['REQUEST_URI'])["path"];

Router::route($path);