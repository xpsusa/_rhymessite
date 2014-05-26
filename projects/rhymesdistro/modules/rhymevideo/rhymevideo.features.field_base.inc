<?php
/**
 * @file
 * rhymevideo.features.field_base.inc
 */

/**
 * Implements hook_field_default_field_bases().
 */
function rhymevideo_field_default_field_bases() {
  $field_bases = array();

  // Exported field_base: 'field_youtube_url'
  $field_bases['field_youtube_url'] = array(
    'active' => 1,
    'cardinality' => 1,
    'deleted' => 0,
    'entity_types' => array(),
    'field_name' => 'field_youtube_url',
    'foreign keys' => array(),
    'indexes' => array(
      'video_id' => array(
        0 => 'video_id',
      ),
    ),
    'locked' => 0,
    'module' => 'youtube',
    'settings' => array(),
    'translatable' => 0,
    'type' => 'youtube',
  );

  return $field_bases;
}
