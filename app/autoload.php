<?php

use Doctrine\Common\Annotations\AnnotationRegistry;
use Composer\Autoload\ClassLoader;

/**
 * @var ClassLoader $loader
 */
$loader = require __DIR__.'/../vendor/autoload.php';
require_once __DIR__.'/dompdf_config.inc.php';

AnnotationRegistry::registerLoader(array($loader, 'loadClass'));

return $loader;
