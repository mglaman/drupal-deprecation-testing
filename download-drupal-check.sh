#!/bin/bash
DRUPAL_CHECK_RELEASE_URL="https://api.github.com/repos/mglaman/drupal-check/releases/latest"
DRUPAL_CHECK_BINARY=$(curl -s $DRUPAL_CHECK_RELEASE_URL | grep browser_download_url | cut -d '"' -f 4)
echo $DRUPAL_CHECK_BINARY
curl -O $DRUPAL_CHECK_BINARY