<?php
/**
 * @file
 * rhymevideo.features.inc
 */

/**
 * Implements hook_views_api().
 */
function rhymevideo_views_api($module = NULL, $api = NULL) {
  return array("api" => "3.0");
}

/**
 * Implements hook_node_info().
 */
function rhymevideo_node_info() {
  $items = array(
    'rhymevideo' => array(
      'name' => t('Rhyme Video'),
      'base' => 'node_content',
      'description' => '',
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
