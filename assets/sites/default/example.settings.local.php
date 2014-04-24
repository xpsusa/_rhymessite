<?php

/**
 * @file
 * Drupal local development override configuration file.
 */

/**
 * Database settings.
 */
$databases = array(
  'default' => array(
    'default' => array(
      'database' => 'somedb',
      'username' => 'someuser',
      'password' => 'somepass',
      'host' => 'localhost',
      'port' => '',
      'driver' => 'mysql',
      'prefix' => '',
    ),
  ),
);

/**
 * Cache settings.
 */
/*
// Disable Memcache.
array_pop($conf['cache_backends']);
unset($conf['cache_default_class']);
unset($conf['cache_class_form']);
// */

/**
 * PHP settings:
 */
error_reporting(-1);
