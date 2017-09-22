<?php

/**
 * @file
 * Admin configuration for Community Funded module.
 */

/**
 * Page callback for admin/config/system/community_funded.
 */
function community_funded_admin_settings_form() {
  $form = array();

  global $base_url;

  $data_user = t('Currently no user ID to display.');

  // This needs to match the API key from Community Funded.
  $form['community_funded_data_user'] = array(
    '#type' => 'textarea',
    '#title' => t('Community Funded User ID'),
    '#description' => t('Enter your own Community Funded User ID here.'),
    '#default_value' => variable_get('community_funded_data_user', $data_user),
  );

  // This needs to match you domain from Community Funded ($data['site_name'].
  // If nothing is entered, it takes your sites base url.
  $form['community_funded_domain_match'] = array(
    '#type' => 'textfield',
    '#title' => t('Community Funded Domain'),
    '#description' => t('Enter your own Community Funded domain here. This site should be: <strong>' . $base_url . '</strong>'),
    '#default_value' => variable_get('community_funded_domain_match', $base_url),
  );

  return system_settings_form($form);
}
