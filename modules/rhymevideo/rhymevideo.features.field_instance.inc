<?php
/**
 * @file
 * rhymevideo.features.field_instance.inc
 */

/**
 * Implements hook_field_default_field_instances().
 */
function rhymevideo_field_default_field_instances() {
  $field_instances = array();

  // Exported field_instance: 'node-rhymevideo-field_youtube_url'
  $field_instances['node-rhymevideo-field_youtube_url'] = array(
    'bundle' => 'rhymevideo',
    'default_value' => NULL,
    'deleted' => 0,
    'description' => '',
    'display' => array(
      'default' => array(
        'label' => 'above',
        'module' => 'youtube',
        'settings' => array(
          'youtube_autohide' => FALSE,
          'youtube_autoplay' => FALSE,
          'youtube_controls' => FALSE,
          'youtube_height' => NULL,
          'youtube_iv_load_policy' => FALSE,
          'youtube_showinfo' => FALSE,
          'youtube_size' => '420x315',
          'youtube_width' => NULL,
        ),
        'type' => 'youtube_video',
        'weight' => 0,
      ),
      'teaser' => array(
        'label' => 'above',
        'settings' => array(),
        'type' => 'hidden',
        'weight' => 0,
      ),
    ),
    'entity_type' => 'node',
    'field_name' => 'field_youtube_url',
    'label' => 'YouTube URL',
    'required' => 0,
    'settings' => array(
      'user_register_form' => FALSE,
    ),
    'widget' => array(
      'active' => 0,
      'module' => 'youtube',
      'settings' => array(),
      'type' => 'youtube',
      'weight' => -4,
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('YouTube URL');

  return $field_instances;
}
