<?php

/**
 * @file assets/sites/default/settings.php
 * Check for Acquia Cloud settings. Included them if/when available.
 */

/**
 * Snippet below provided by Acquia Cloud.
 */
if (file_exists('/var/www/site-php')) {
  require '/var/www/site-php/rhymessite1/rhymessite1-settings.inc';
}

/**
 * Load local development override configuration, if available.
 *
 * We first verify that we are not running in Acquia Cloud. This checks for a
 * series of things we assume to be available when Drupal is running in Acquia
 * Cloud. This check could be rendered invalid if significant changes to the
 * Acquia cloud are made.
 *
 * Use settings.local.php to override variables on secondary (staging,
 * development, etc) installations of this site. Typically used to disable
 * caching, JavaScript/CSS compression, re-routing of outgoing e-mails, and
 * other things that should not happen on development and testing sites.
 *
 * Keep this code block at the end of this file to take full effect.
 *
 * @see example.settings.local.php
 */
if (!(isset($_ENV['AH_SITE_NAME']) || function_exists('acquia_hosting_db_choose_active') || file_exists('/var/www/site-php'))) {
  $settings_local = DRUPAL_ROOT . '/' . conf_path() . '/settings.local.php';
  if (file_exists($settings_local)) {
    include $settings_local;
  }
}
