<?php
$name = trim($_REQUEST['name']);

if (!empty($name)) {

    echo 'Hello ' . $name . ', this is a response from a Docker container.';
    die();
}

die('Invalid request');