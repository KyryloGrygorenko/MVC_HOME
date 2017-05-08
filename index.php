<?php

error_reporting(E_ALL);

define('DS', DIRECTORY_SEPARATOR);
define('ROOT', __DIR__ . DS);
define('VIEW_DIR', ROOT . 'View' . DS);

spl_autoload_register(function($classname){

    $file= ROOT.  str_replace('\\', DS, "{$classname}.php");

    if (!file_exists($file)) {
        throw new \Exception ("{$file} not found");
    }
    require_once $file;
});

$request = new \Library\Request();
$route = $request->get('route', 'default/index');

$route =explode('/',$route);
if (count($route)<2){
    $route[0] ='default';
    $route[1] ='index';
}

$controller = 'Controller\\' . ucfirst($route[0] . 'Controller');
$action = $route[1] . 'Action';

$controller = new $controller;

if(!method_exists($controller, $action)) {
    throw new Exception("{$action} is not found");
}

$content= $controller->$action($route);

echo '</br>';
require VIEW_DIR . 'layout.phtml';












