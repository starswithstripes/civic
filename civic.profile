<?php
// $Id$

/**
 * @file civic.profile, Civic installation profile.
 * 
 * This file is modeled after Open Atrium's 
 * installation profile (version 1.0-beta6).
 */

/**
 * Implementation of hook_profile_details().
 */
function civic_profile_details() {
  return array(
    'name' => 'Civic',
    'description' => 'Civic by StarsWithStripes.Org, ',
  );
}

/**
 * Implementation of hook_profile_modules().
 */
function civic_profile_modules() {
  $modules = array(
     // Drupal core
    'block',
    // 'comment',
    'dblog',
    'filter',
    'help',
    'menu',
    'node',
    // 'openid',
    'search',
    'system', 
    'taxonomy',
    'ping',
    // 'upload',
    'user',
    // 'throttle',
    'contact',
    // Admin
    'admin',
    // Views
    'views', 
    // CTools
    'ctools',
    // Context
    'context',
    // Date
    'date_api', 'date_timezone',
    // Features
    'features',
    // Image
    'imageapi', 'imageapi_gd', 'imagecache',
    // Token
    'token',
    // Transliteration
    // 'transliteration',
    // Ucreate
    // 'ucreate', // @TODO Revisit for user administration.
    // Path
    'path', 'pathauto',
  );

  // @TODO translation.
  /*
  // If language is not English we add the 'atrium_translate' module the first
  // To get some modules installed properly we need to have translations loaded
  // We also use it to check connectivity with the translation server on hook_requirements()
  if (_civic_language_selected()) {
    // We need locale before l10n_update because it adds fields to locale tables
    $modules[] = 'locale';
    $modules[] = 'l10n_update';
    $modules[] = 'atrium_translate';
  }
  // */

  return $modules;
}

/**
 * Returns an array list of civic features (and supporting) modules.
 */
function _civic_modules() {
  return array(
    // Strongarm
    'strongarm',
    // Calendar, date
    'date', 'date_popup', 
    // CCK
    'content', 'nodereference', 'number', 'text', 
    'optionwidgets', 'fieldgroup', 'userreference',
    // CCK related
    'filefield', 'imagefield',
    // Feeds
    'feeds',
    // jQuery
    'jquery_plugin', 'jquery_ui', 
    // Rotor Banner
    'rotor', 
    // Video Filter
    'video_filter',
    // Google Maps Embed
    'embed_gmap',
    // Nodequeue
    'nodequeue', 
    // AddThis
    'addthis',
    // Role Delegation
    'role_delegation',
    // Submit Again
    'submitagain',
    // Upload elements
    'upload_element',
    // Formats
    // @TODO Revisit input formats... 'codefilter', 'markdown',
    // DesignKit
    // @TODO 'color', 'designkit', 
    // VBO
    'views_bulk_operations', 'actions_permissions',
    // Taxonomy Manager
    'taxonomy_manager',
    // Google Analytics
    'googleanalytics', 
    // Text Resize
    /**
     * @TODO figure out what's going on with javascript in text_resize.
     * Initially, this was disabled in the install profile. Mysteriously,
     * the Admin Toolbar and collapsible CCK fieldgroups stopped working.
     * The thing that's so weird, is that these continued to work in 
     * Garland, Admin, Zen themes, just not in Whitehouse (and related 
     * subthemes). Enabling text_resize seems to fix this.
     * 
     * There must be a conflict in jQuery files somewhere among modules.
     * Enabling text_resize isn't a very stable fix. Revisit this 
     * and see if it's practical to build the fix into the theme. 
     */
    'text_resize', 
    // wysiwyg
    'wysiwyg',
    // Custom Civic modules
    'sws', 'sws_fields', 'sws_mgmt',
    'whitehouse_subtheme',
    'related_posts', 'addthissubtheme',
    'ax3',
    // Custom Civic modules coming soon to contrib
    //'faccess',
    'paccess',
    'subtheme',
    'user1',

    // Civic features modules, by feature set
    // Administration
      'sws_admin',
    // Agenda
      //'agenda',
    // Blog
      //'sws_blog',
      //'recent_blog_posts__front_page',
    // Depricated
      'front_page',
      'front_page_2',
    // Dev
      //'jobs',
      //'slides',
      //'slideshow_panoramic_1',
      //'slideshow_panoramic_1_num',
      //'slideshow_panoramic_2',
      //'slideshow_panoramic_3',
      //'slideshow_panoramic_4',
      //'slideshow_panoramic_4_nav',
      //'spanish_menus',
    // Events
      'events',
      'addthis_events',
      'buttonblock_events',
      'relatedposts_events',
      'upcomingevents_events',
    // Features
      'button_block', 
      'owh_default_settings',
      'owh_views',
      'owh_default_settings', 
      'owh_views',
      'twitter_feed',
      //'sws_ngp',
    // Footer
      'footer_navigation', 
      'footer_navigation',
    // Front Page
      'addthis_frontpage',
      'buttonblock_frontpage',
      'featuredposts_frontpage',
      'featuredvideo_fontpage',
      'recentposts_frontpage',
      'twitter_frontpage',
      'upcomingevents_frontpage',
      'twocolslideshow_frontpage',
      //'twitter_frontpage',
    //'whitehouseslideshow_frontpage',
    // Issues
      'issues', 
      'addthis_issues',
      'buttonblock_issues',
      'featuredposts_issues',
      'nav_issues',
      'relatedposts_issues',
    // Legislation
      //'legislation',
    // News Clips
      'news_clips', 
      'addthis_newsclips',
      'buttonblock_newsclips',
      'featuredposts_newsclips',
      'nav_newsclips',
      'relatedposts_newsclips',
    // Page
      'page', 
      'addthis_page',
      'buttonblock_page',
      'featuredposts_page',
      'relatedposts_page',
    // Press Releases
      'press_releases', 
      'addthis_pressreleases',
      'buttonblock_pressreleases',
      'featuredposts_pressreleases',
      'relatedposts_pressreleases',
    // Resources
      //'resources',
    // Staff
      //'staff',
    // Testing
    // Video
      //'video',
      //'featured_video_fpm',
      //'featuredvideo_fontpage',
  );
}

/**
 * Implementation of hook_profile_task_list().
 */
function civic_profile_task_list() {
  /* @TODO translation
  if (_civic_language_selected()) {
    $tasks['civic-translation-batch'] = st('Download and import translation');
  }
  // */
  $tasks['civic-modules-batch'] = st('Install Civic modules');
  $tasks['civic-configure-batch'] = st('Configure Civic');
  return $tasks;
}

/**
 * Implementation of hook_profile_tasks().
 */
function civic_profile_tasks(&$task, $url) {
  global $profile, $install_locale;
  
  // Just in case some of the future tasks adds some output
  $output = '';

  // Download and install translation if needed
  if ($task == 'profile') {
    // Rebuild the language list.
    // When running through the CLI, the static language list will be empty
    // unless we repopulate it from the ,newly available, database.
    language_list('name', TRUE);

    /* @TODO translation.
    if (_civic_language_selected() && module_exists('atrium_translate')) {
      module_load_install('atrium_translate');
      if ($batch = atrium_translate_create_batch($install_locale, 'install')) {
        $batch['finished'] = '_civic_translate_batch_finished';
        // Remove temporary variables and set install task
        variable_del('install_locale_batch_components');
        variable_set('install_task', 'civic-translation-batch');
        batch_set($batch);
        batch_process($url, $url);
        // Jut for cli installs. We'll never reach here on interactive installs.
        return;
      }
    }
    // */

    // If we reach here, means no language install, move on to the next task
    $task = 'civic-modules';
  }

  // We are running a batch task for this profile so basically do nothing and return page
  // @TODO check for any lingering references to 'intranet'
  if (in_array($task, array('civic-modules-batch', 'civic-translation-batch', 'civic-configure-batch'))) {
    include_once 'includes/batch.inc';
    $output = _batch_page();
  }
  
  // Install some more modules and maybe localization helpers too
  if ($task == 'civic-modules') {
    $modules = _civic_modules();
    $files = module_rebuild_cache();
    // Create batch
    foreach ($modules as $module) {
      $batch['operations'][] = array('_install_module_batch', array($module, $files[$module]->info['name']));
    }    
    $batch['finished'] = '_civic_profile_batch_finished';
    $batch['title'] = st('Installing @drupal', array('@drupal' => drupal_install_profile_name()));
    $batch['error_message'] = st('The installation has encountered an error.');

    // Start a batch, switch to 'civic-modules-batch' task. We need to
    // set the variable here, because batch_process() redirects.
    variable_set('install_task', 'civic-modules-batch');
    batch_set($batch);
    batch_process($url, $url);
    // @TODO Find out what an "interactive install" is. 
    // Just for cli installs. We'll never reach here on interactive installs.
    return;
  }

  // Run additional configuration tasks
  // @todo Review all the cache/rebuild options at the end, some of them may not be needed
  // @todo Review for localization, the time zone cannot be set that way either
  if ($task == 'civic-configure') {
    $batch['title'] = st('Configuring @drupal', array('@drupal' => drupal_install_profile_name()));
    $batch['operations'][] = array('_civic_configure', array());
    $batch['operations'][] = array('_civic_configure_check', array());
    $batch['finished'] = '_civic_configure_finished';
    variable_set('install_task', 'civic-configure-batch');
    batch_set($batch);
    batch_process($url, $url);
    // Jut for cli installs. We'll never reach here on interactive installs.
    return;
  }  

  return $output;
}

/**
 * Check whether we are installing in a language other than English
 */
function _civic_language_selected() {
  global $install_locale;
  return !empty($install_locale) && ($install_locale != 'en');
}

/**
 * Configuration. First stage.
 */
function _civic_configure() {
  /* @TODO translation
  global $install_locale;

  // Disable the english locale if using a different default locale.
  if (!empty($install_locale) && ($install_locale != 'en')) {
    db_query("DELETE FROM {languages} WHERE language = 'en'");
  }
  // */

  /**
   * Permissions
   *
   * Note: There is deliberately no admin role. Out-of-the-box
   * nobody except user 1 can assign permissions or execute
   * PHP. The user1 module prevents Site Managers from editing
   * user 1's password and hijacking permissions. This lets 
   * site managers have access to approved admin pages without 
   * compromising security in a shared hosting environment.
   * 
   * TODO The lion's share--if not all--this stuff has been moved into
   * features modules. Update this sql stuff accordingly.
   * CRUD permissions now ship with the following 
   * features modules: 
   *  events, issues, legislation, news_clips, press_releases
   *  staff, video, resources, agenda, sws_blog.
   */
  // Create Content Manager and Site Manager roles.
  // Use rid 4 and 6 for backwards compatibility with older install profiles.
  db_query("INSERT INTO {role} VALUES "
         // already inserted by Drupal // ."(1, 'anonymous user'), " 
         // already inserted by Drupal // ."(2, 'authenticated user'), "
          ."(4,'site manager'), "
          ."(6,'content manager')");
  // Create permissions
  db_query("INSERT INTO {permission} (rid, perm, tid) VALUES "
     ."(1,'access site-wide contact form, access content, view addthis',0), "
     ."(2,'access site-wide contact form, access content, view addthis',0), "
     ."(6,'access site-wide contact form, view addthis, use admin toolbar, access comments, flush imagecache, translate interface, access content, create bio content, create button content, create event content, create issue content, create legislation content, create news_clip content, create news_organization content, create page content, create photo content, create press_release content, create twitter_feed content, create video content, delete any bio content, delete any button content, delete any event content, delete any feed content, delete any feed_item content, delete any issue content, delete any legislation content, delete any news_clip content, delete any news_organization content, delete any page content, delete any photo content, delete any press_release content, "
."delete any tweet content, delete any twitter_feed content, delete any video content, delete own bio content, delete own button content, delete own event content, delete own feed content, delete own feed_item content, delete own issue content, delete own legislation content, delete own news_clip content, delete own news_contact content, delete own news_organization content, delete own page content, delete own photo content, delete own press_release content, delete own tweet content, delete own twitter_feed content, delete own video content, edit any bio content, edit any button content, edit any event content, edit any feed content, edit any feed_item content, edit any issue content, "
."edit any legislation content, edit any news_clip content, edit any news_organization content, edit any page content, edit any photo content, edit any press_release content, edit any tweet content, edit any twitter_feed content, edit any video content, edit own bio content, edit own button content, edit own event content, edit own feed content, edit own feed_item content, edit own issue content, edit own legislation content, edit own news_clip content, edit own news_contact content, edit own news_organization content, edit own page content, edit own photo content, edit own press_release content, edit own tweet content, edit own twitter_feed content, edit own video content, manipulate all queues, manipulate queues, administer sws, clear cache, manage content, change own username, access all views',0), " 
     ."(4,'administer taxonomy, access site-wide contact form, execute Add to Nodequeues (nodequeue_add_action), execute Change the author of a post (node_assign_owner_action), execute Delete comment (views_bulk_operations_delete_comment_action), execute Delete node (views_bulk_operations_delete_node_action), execute Delete term (views_bulk_operations_delete_term_action), execute Make post sticky (node_make_sticky_action), execute Make post unsticky (node_make_unsticky_action), execute Make sticky (node_mass_update), execute Modify node taxonomy terms (views_bulk_operations_taxonomy_action), execute Publish post (node_publish_action), execute Remove from Nodequeues (nodequeue_remove_action), execute Remove stickiness (node_mass_update), execute Unpublish (node_mass_update), execute Unpublish comment (comment_unpublish_action), execute Unpublish comment containing keyword(s) (comment_unpublish_by_keyword_action), execute Unpublish post (node_unpublish_action), execute Unpublish post containing keyword(s) (node_unpublish_by_keyword_action), view addthis, use admin toolbar, access comments, manage features, flush imagecache, translate interface, access content, create bio content, create button content, "
."create event content, create issue content, create legislation content, create news_clip content, create news_organization content, create page content, create photo content, create press_release content, create twitter_feed content, create video content, delete any bio content, delete any button content, delete any event content, delete any feed content, delete any feed_item content, delete any issue content, delete any legislation content, delete any news_clip content, delete any news_contact content, delete any news_organization content, delete any page content, delete any photo content, delete any press_release content, delete any tweet content, delete any twitter_feed content, delete any video content, delete own bio content, delete own button content, "
."delete own event content, delete own feed content, delete own feed_item content, delete own issue content, delete own legislation content, delete own news_clip content, delete own news_contact content, delete own news_organization content, delete own page content, delete own photo content, delete own press_release content, delete own tweet content, delete own twitter_feed content, delete own video content, edit any bio content, edit any button content, edit any event content, edit any feed content, edit any feed_item content, edit any issue content, edit any legislation content, edit any news_clip content, edit any news_organization content, edit any page content, edit any photo content, "
."edit any press_release content, edit any tweet content, edit any twitter_feed content, edit any video content, edit own bio content, edit own button content, edit own event content, edit own feed content, edit own feed_item content, edit own issue content, edit own legislation content, edit own news_clip content, edit own news_contact content, edit own news_organization content, edit own page content, edit own photo content, edit own press_release content, edit own tweet content, edit own twitter_feed content, edit own video content, manipulate all queues, manipulate queues, administer sws, clear cache, manage content, access user profiles, administer users, change own username, access all views, manage subtheme, assign content manager role, assign site manager role, administer google analytics, administer site-wide contact form, assign site manager role, administer menu, administer site configuration',0)");

  // @TODO remove filter formats? include markup? 
  /*
  // Remove default input filter formats
  $result = db_query("SELECT * FROM {filter_formats} WHERE name IN ('%s', '%s')", 'Filtered HTML', 'Full HTML');
  while ($row = db_fetch_object($result)) {
    db_query("DELETE FROM {filter_formats} WHERE format = %d", $row->format);
    db_query("DELETE FROM {filters} WHERE format = %d", $row->format);
  }
  */

  // wysiwyg settings 
  $format = 1; 
  $editor = 'ckeditor';
  $settings = 'a:20:{s:7:"default";i:0;s:11:"user_choose";i:0;s:11:"show_toggle";i:1;s:5:"theme";s:8:"advanced";s:8:"language";s:2:"en";s:7:"buttons";a:1:{s:7:"default";a:6:{s:4:"Bold";i:1;s:6:"Italic";i:1;s:12:"BulletedList";i:1;s:12:"NumberedList";i:1;s:4:"Link";i:1;s:9:"PasteText";i:1;}}s:11:"toolbar_loc";s:3:"top";s:13:"toolbar_align";s:4:"left";s:8:"path_loc";s:6:"bottom";s:8:"resizing";i:1;s:11:"verify_html";i:1;s:12:"preformatted";i:0;s:22:"convert_fonts_to_spans";i:1;s:17:"remove_linebreaks";i:0;s:23:"apply_source_formatting";i:0;s:27:"paste_auto_cleanup_on_paste";i:0;s:13:"block_formats";s:32:"p,address,pre,h2,h3,h4,h5,h6,div";s:11:"css_setting";s:5:"theme";s:8:"css_path";s:0:"";s:11:"css_classes";s:0:"";}';
  db_query("INSERT INTO {wysiwyg} (format, editor, settings) "
          ."VALUES (%d, '%s', '%s') ", $format, $editor, $settings);
  $format = 2; 
  $editor = 'ckeditor';
  $settings = 'a:20:{s:7:"default";i:0;s:11:"user_choose";i:0;s:11:"show_toggle";i:1;s:5:"theme";s:8:"advanced";s:8:"language";s:2:"en";s:7:"buttons";a:1:{s:7:"default";a:13:{s:4:"Bold";i:1;s:6:"Italic";i:1;s:9:"Underline";i:1;s:11:"JustifyLeft";i:1;s:13:"JustifyCenter";i:1;s:12:"JustifyRight";i:1;s:12:"JustifyBlock";i:1;s:12:"BulletedList";i:1;s:12:"NumberedList";i:1;s:4:"Link";i:1;s:9:"TextColor";i:1;s:9:"PasteText";i:1;s:8:"FontSize";i:1;}}s:11:"toolbar_loc";s:3:"top";s:13:"toolbar_align";s:4:"left";s:8:"path_loc";s:6:"bottom";s:8:"resizing";i:1;s:11:"verify_html";i:1;s:12:"preformatted";i:0;s:22:"convert_fonts_to_spans";i:1;s:17:"remove_linebreaks";i:0;s:23:"apply_source_formatting";i:0;s:27:"paste_auto_cleanup_on_paste";i:0;s:13:"block_formats";s:32:"p,address,pre,h2,h3,h4,h5,h6,div";s:11:"css_setting";s:5:"theme";s:8:"css_path";s:0:"";s:11:"css_classes";s:0:"";}';
  db_query("INSERT INTO {wysiwyg} (format, editor, settings) "
          ."VALUES (%d, '%s', '%s') ", $format, $editor, $settings);

  // Set Filtered HTML to allow <p> and <u> tags.
  variable_set('allowed_html_1', '<a> <em> <strong> <cite> <code> <ul> <ol> <li> <dl> <dt> <dd> <u><table><th><td><tr><p>');

  // Enable Site Managers to use Full HTMl input format
  db_query("UPDATE {filter_formats} SET roles = ',4,' WHERE name = 'Full HTML'");

  /* @TODO Add user pics for comments and supporter pages.
  // Create user picture directory
  $picture_path = file_create_path(variable_get('user_picture_path', 'pictures'));
  file_check_directory($picture_path, 1, 'user_picture_path');
  // */

  // Create keyword freetagging vocab for internal tagging
  $vocab = '';
  $vocab = array(
    'name' => 'Keywords',
    'multiple' => 0,
    'required' => 0,
    'hierarchy' => 0,
    'relations' => 0,
    'weight' => 3,
    'nodes' => array(
             'bio' => 1,
             'button' => 1,
             'event' => 1, 
             'issue' => 1, 
             'legislation' => 1, 
             'news_clip' => 1, 
             'page' => 1, 
             'photo' => 1, 
             'press_release' => 1, 
             'video' => 1,
      ), 
    'tags' => TRUE,
    'help' => t('Enter a comma separated list of keywords describing this post. '
               .'Keywords are not visible to the public. '
               .'They can be used internally to organize and manage website content.'),
  );
  taxonomy_save_vocabulary($vocab);

  // Create Event Categories freetagging vocab 
  $vocab = '';
  $vocab = array(
    'name' => 'Event Categories',
    'multiple' => 0,
    'required' => 0,
    'hierarchy' => 0,
    'relations' => 0,
    'weight' => 1,
    'nodes' => array('event' => 1),
    'tags' => TRUE,
    'help' => t('Help site visitors find what they\'re looking for in the events listing. '
               .'Enter a comma separated list of category names here. '
               .'Visitors can filter the events list for selected categories '
               .'and email customized lists to their friends.'),
  );
  taxonomy_save_vocabulary($vocab);

  /**
   * todo Add this when photo/video galler feature is ready
   *
  // Create Photo/Video Categories freetagging vocab 
  $vocab = '';
  $vocab = array(
    'name' => 'Photo/Video Categories',
    'multiple' => 0,
    'required' => 0,
    'hierarchy' => 0,
    'relations' => 0,
    'weight' => 2,
    'nodes' => array(
             'bio' => 1, 
             'event' => 1, 
             'issue' => 1, 
             'legislation' => 1, 
             'news_clip' => 1, 
             'page' => 1, 
             'photo' => 1, 
             'press_release' => 1, 
             'video' => 1,
    ),
    'tags' => TRUE,
    'help' => t('Help site visitors find what they\'re looking for in the photo/video gallery. '
               .'Enter a comma separated list of category names here. '
               .'Visitors can find photos and video attached to this post '
               .'by browsing category names.'),
  );
  taxonomy_save_vocabulary($vocab);
  // */


  // Rename Features and Secondary Links menus.
  db_query("UPDATE {menu_custom} "
          ."SET title = 'Main Menu', description = 'Main navigation menu. "
                      ."Menu items for any enabled features appear here.' "
          ." WHERE menu_name = 'features'"); 
  db_query("UPDATE {menu_custom} "
          ."SET title = 'Secondary Menu' "
          ." WHERE menu_name = 'secondary-links'"); 

  // Nodequeues
  db_query("INSERT INTO {nodequeue_queue} "
          ."VALUES (1,'Front Page Slideshow','',4,'','','nodequeue',1,1,0,'0',0,1),"
          ."(2,'Featured Posts','',6,'','','nodequeue',1,1,0,'0',0,1),"
          ."(3,'Featured Video','',1,'','','nodequeue',1,1,0,'0',0,1),"
          ."(4,'Front Page Main ','',1,'','','nodequeue',1,1,0,'0',0,1)");
  db_query("INSERT INTO {nodequeue_roles} VALUES (2,4),(1,4),(4,4)");
  db_query("INSERT INTO {nodequeue_subqueue} "
          ."VALUES (1,1,'1','Front Page Slideshow'),"
          ."(2,2,'2','Featured Posts'),"
          ."(3,3,'3','Featured Video'),"
          ."(4,4,'4','Front Page Main ')");
  db_query("INSERT INTO {nodequeue_types} "
          ."VALUES "
          ."(1,'photo'),(1,'page'),(1,'news_clip'),(1,'legislation'),(1,'issue'),(1,'event'),"
          ."(2,'press_release'),(2,'photo'),(2,'page'),(2,'news_clip'),(2,'legislation'),"
          ."(2,'issue'),(2,'event'),(2,'bio'),(2,'video'),"
          ."(3,'bio'),(3,'event'),(3,'issue'),(3,'legislation'),(3,'news_clip'),(3,'page'),"
          ."(3,'press_release'),(3,'video'),"
          ."(1,'bio'),"
          ."(4,'page'),"
          ."(1,'press_release'),(1,'video')");
  // Rename "nodequeue" "Queue"
  variable_set('nodequeue_tab_name', "Queue");

  // Performance settings
  variable_set('preprocess_css', TRUE);
  variable_set('preprocess_js', TRUE);

  // Set title of AddThis block to <none>
  db_query("INSERT INTO {blocks} (module, theme, title, cache) VALUES ('addthis','candidate','<none>',1)");
  
  // create and notify user number 2
  ax3_create_user2();
  // now disable ax3. we're done with it. 
  module_disable(array('ax3'));

  // Only site administrators can create users.
  variable_set('user_register', 0); 

  // Set errors to write to log, not print on screen (for security)
  variable_set('error_level', 0);

  // Set time zone
  // @TODO: This is not sufficient. We either need to display a message or
  // derive a default date API location.
  $tz_offset = date('Z');
  variable_set('date_default_timezone', $tz_offset);

  /* @TODO! Add promotional footer.
  // Set a default footer message.
  variable_set('site_footer', '&copy; 2009 '. l('Development Seed', 'http://www.developmentseed.org', array('absolute' => TRUE)));
  // */

  // Restrict package access.
  // End users should not be able to enable/disable 
  // depricaged, dev, aegir or test features.
  variable_set('paccess_aegir-add-ons', TRUE);
  variable_set('paccess_dev', TRUE);
  variable_set('paccess_depricated', TRUE);
  variable_set('paccess_testing', TRUE);
}

/**
 * Configuration. Second stage.
 */
function _civic_configure_check() {
  // This isn't actually necessary as there are no node_access() entries,
  // but we run it to prevent the "rebuild node access" message from being
  // shown on install.
  node_access_rebuild();

  // Rebuild key tables/caches
  drupal_flush_all_caches();

  // Set default theme. This must happen after drupal_flush_all_caches(), which
  // will run system_theme_data() without detecting themes in the install
  // profile directory.
  _civic_system_theme_data();
  db_query("UPDATE {blocks} SET status = 0, region = ''"); // disable all DB blocks
  db_query("UPDATE {system} SET status = 0 WHERE type = 'theme' and name ='%s'", 'garland');
  db_query("UPDATE {system} SET status = 0 WHERE type = 'theme' and name ='%s'", 'whitehouse');
  db_query("UPDATE {system} SET status = 0 WHERE type = 'theme' and name ='%s'", 'candidate');
  variable_set('theme_default', 'candidate');

  // In Aegir install processes, we need to init strongarm manually as a
  // separate page load isn't available to do this for us.
  if (function_exists('strongarm_init')) {
    strongarm_init();
  }

  // @TODO revisit site_offline. Password reset (login link) doesn't work if site is offline.
  // Put site offline for initial set up.
  // variable_set('site_offline', TRUE);

  // Note: This wasn't working earlier in the process. 
  // Works here. Seems like maybe programatically creating 
  // content should be near the end, so this may be a good place
  // for this step. 
  // 
  // node 1
  // Stub out About page with instructional video.
  $node = new stdClass();
  $node->uid = 1;
  $node->type = 'page';
  $node->title = 'About'; // TODO handle for translation. 
  $node->field_video_url[0]['value'] = 'http://vimeo.com/11840891';
  $node->field_video_size[0]['value'] = 'width:445 height:364';
  $node->field_video_align[0]['value'] = 'center';
  $node->format = 1;
  $node->status = 1;
  $node->menu = array(
    'module' => 'menu',
    'options' => array('attributes' => array('title' => 'About')),
    'parent_depth_limit' => 8,
    'link_title' => 'About', // TODO handle for translation.
    'weight' => -50,
    'parent' => 'features:0',
    'menu_name' => 'features',
  );
  $node->path = '';
  $node->pathauto_perform_alias = 1;
  // save
  node_save($node);

  // node 2
  // Welcome page with instructional video.
  $node = new stdClass();
  $node->uid = 1;
  $node->type = 'page';
  $node->title = 'Welcome'; // TODO handle for translation. 
  $node->body = '<h1>Additional Video Tutorials:</h1>
    <a href="http://www.youtube.com/watch?v=stcqiY5WayY" style="cursor:pointer; text-transform:none;">Getting Started: Contact Us</a><br/>
    <a href="http://blip.tv/file/3648773" style="cursor:pointer; text-transform:none;">Getting Started: Sign Up Forms</a><br/>
    <a href="http://blip.tv/file/3642936" style="cursor:pointer; text-transform:none;">Getting Started: Front Page</a><br/>'; 
  $node->field_video_url[0]['value'] = 'http://www.youtube.com/watch?v=NWfDhVVrryA';
  $node->field_video_size[0]['value'] = 'width:445 height:364';
  $node->field_video_align[0]['value'] = 'center';
  $node->format = 2; // full html for videos embeded in body
  $node->status = 1;
  $node->path = '';
  $node->pathauto_perform_alias = 1;
  // save
  node_save($node);

  // Add welcome video (node) to Front Page Main queue
  $qid = 4;
  $sqid = 4;
  $queue = nodequeue_load($qid);
  $subqueue = nodequeue_load_subqueue($sqid);
  $nid = 2;
  nodequeue_subqueue_add($queue, $subqueue, $nid);

  /**
   *
  // node 3
  // Front Page video with instructional video.
  $node = new stdClass();
  $node->uid = 1;
  $node->type = 'page';
  $node->title = 'Setting up your Front Page';// TODO handle for translation. 
  $node->field_video_url[0]['value'] = 'http://blip.tv/file/3642936';
  $node->field_video_size[0]['value'] = 'width:445 height:364';
  $node->field_video_align[0]['value'] = 'center';
  $node->format = 1;
  $node->status = 1;
  $node->path = '';
  $node->pathauto_perform_alias = 1;
  // save
  node_save($node);

  // Add Featured Video queue
  $qid = 3;
  $sqid = 3;
  $queue = nodequeue_load($qid);
  $subqueue = nodequeue_load_subqueue($sqid);
  $nid = 3;
  nodequeue_subqueue_add($queue, $subqueue, $nid);
  // */

  /*
   * todo This seems to resolve funny date issues like 
   * Views showing the wrong time.  
   * 
   * It would be better to propt user to select timezone 
   * rather than set everything to Eastern Time. 
   * 
   * Open Atrium appears to be improving it's install-profile
   * time zone set up stuff too. Keep an eye on that and 
   * see where it goes. 
   */
  $form_state['values']['date_default_timezone'] = -14400;
  $form_state['values']['configurable_timezones'] = 0;
  $form_state['values']['date_first_day'] = 0;  $form_state['values']['date_default_timezone_name'] = 'America/New_York';
  drupal_execute('system_date_time_settings', $form_state);

  // Revert key components that are overridden by others on install.
  // Note that this comes after all other processes have run, as some cache
  // clears/rebuilds actually set variables or other settings that would count
  // as overrides.
  $revert = array(
    'button_block' => array(),
    'events' => array(),
    'footer_navigation' => array(),
    'front_page' => array(),
    'issues' => array(),
    'legislation' => array(),
    'news_clips' => array(),
    'page' => array(),
    'press_releases' => array(),
    'staff' => array(),
    'sws_admin' => array(),
    'twitter_feed' => array(),
    'owh_default_settings' => array(),
  );
  features_revert($revert);

}

/**
 * Finish configuration batch
 * 
 * @todo Handle error condition
 */
function _civic_configure_finished($success, $results) {
  variable_set('civic_install', 1);

  // @TODO translation
  // Get out of this batch and let the installer continue. If loaded translation,
  // we skip the locale remaining batch and move on to the next.
  // However, if we didn't make it with the translation file, or they downloaded
  // an unsupported language, we let the standard locale do its work.
  if (variable_get('civic_translate_done', 0)) {
    variable_set('install_task', 'finished');
  }
  else {
    variable_set('install_task', 'profile-finished');
  } 
}

/**
 * Finished callback for the modules install batch.
 *
 * Advance installer task to language import.
 */
function _civic_profile_batch_finished($success, $results) {
  variable_set('install_task', 'civic-configure');
}

/**
 * Finished callback for the first locale import batch.
 *
 * Advance installer task to the configure screen.
 */
function _civic_translate_batch_finished($success, $results) {
  /* @TODO! translation
  include_once 'includes/locale.inc';
  // Let the installer now we've already imported locales
  variable_set('atrium_translate_done', 1);
  variable_set('install_task', 'intranet-modules');
  _locale_batch_language_finished($success, $results);
  // */
}

/**
 * Alter some forms implementing hooks in system module namespace
 * This is a trick for hooks to get called, otherwise we cannot alter forms
 */

/**
 * @TODO: This might be impolite/too aggressive. We should at least check that
 * other install profiles are not present to ensure we don't collide with a
 * similar form alter in their profile.
 *
 * Set Open Atrium as default install profile.
 */
function system_form_install_select_profile_form_alter(&$form, $form_state) {
  foreach($form['profile'] as $key => $element) {
    $form['profile'][$key]['#value'] = 'civic';
  }
}

/**
 * Set English as default language.
 * 
 * If no language selected, the installation crashes. I guess English should be the default 
 * but it isn't in the default install. @todo research, core bug?
 */
function system_form_install_select_locale_form_alter(&$form, $form_state) {
  $form['locale']['en']['#value'] = 'en';
}

/**
 * Alter the install profile configuration form and provide timezone location options.
 */
function system_form_install_configure_form_alter(&$form, $form_state) {
  $form['site_information']['site_name']['#default_value'] = 'Civic';
  $form['site_information']['site_mail']['#default_value'] = 'admin@'. $_SERVER['HTTP_HOST'];
  $form['admin_account']['account']['name']['#default_value'] = 'superuser'; // @TODO does this work? 
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@'. $_SERVER['HTTP_HOST'];

  if (function_exists('date_timezone_names') && function_exists('date_timezone_update_site')) {
    $form['server_settings']['date_default_timezone']['#access'] = FALSE;
    $form['server_settings']['#element_validate'] = array('date_timezone_update_site');
    $form['server_settings']['date_default_timezone_name'] = array(
      '#type' => 'select',
      '#title' => t('Default time zone'),
      '#default_value' => NULL,
      '#options' => date_timezone_names(FALSE, TRUE),
      '#description' => t('Select the default site time zone. If in doubt, choose the timezone that is closest to your location which has the same rules for daylight saving time.'),
      '#required' => TRUE,
    );
  }
}

/**
 * Reimplementation of system_theme_data(). The core function's static cache
 * is populated during install prior to active install profile awareness.
 * This workaround makes enabling themes in profiles/[profile]/themes possible.
 */
function _civic_system_theme_data() {
  global $profile;
  $profile = 'civic';

  $themes = drupal_system_listing('\.info$', 'themes');
  $engines = drupal_system_listing('\.engine$', 'themes/engines');

  $defaults = system_theme_default();

  $sub_themes = array();
  foreach ($themes as $key => $theme) {
    $themes[$key]->info = drupal_parse_info_file($theme->filename) + $defaults;

    if (!empty($themes[$key]->info['base theme'])) {
      $sub_themes[] = $key;
    }

    $engine = $themes[$key]->info['engine'];
    if (isset($engines[$engine])) {
      $themes[$key]->owner = $engines[$engine]->filename;
      $themes[$key]->prefix = $engines[$engine]->name;
      $themes[$key]->template = TRUE;
    }

    // Give the stylesheets proper path information.
    $pathed_stylesheets = array();
    foreach ($themes[$key]->info['stylesheets'] as $media => $stylesheets) {
      foreach ($stylesheets as $stylesheet) {
        $pathed_stylesheets[$media][$stylesheet] = dirname($themes[$key]->filename) .'/'. $stylesheet;
      }
    }
    $themes[$key]->info['stylesheets'] = $pathed_stylesheets;

    // Give the scripts proper path information.
    $scripts = array();
    foreach ($themes[$key]->info['scripts'] as $script) {
      $scripts[$script] = dirname($themes[$key]->filename) .'/'. $script;
    }
    $themes[$key]->info['scripts'] = $scripts;

    // Give the screenshot proper path information.
    if (!empty($themes[$key]->info['screenshot'])) {
      $themes[$key]->info['screenshot'] = dirname($themes[$key]->filename) .'/'. $themes[$key]->info['screenshot'];
    }
  }

  foreach ($sub_themes as $key) {
    $themes[$key]->base_themes = system_find_base_themes($themes, $key);
    // Don't proceed if there was a problem with the root base theme.
    if (!current($themes[$key]->base_themes)) {
      continue;
    }
    $base_key = key($themes[$key]->base_themes);
    foreach (array_keys($themes[$key]->base_themes) as $base_theme) {
      $themes[$base_theme]->sub_themes[$key] = $themes[$key]->info['name'];
    }
    // Copy the 'owner' and 'engine' over if the top level theme uses a
    // theme engine.
    if (isset($themes[$base_key]->owner)) {
      if (isset($themes[$base_key]->info['engine'])) {
        $themes[$key]->info['engine'] = $themes[$base_key]->info['engine'];
        $themes[$key]->owner = $themes[$base_key]->owner;
        $themes[$key]->prefix = $themes[$base_key]->prefix;
      }
      else {
        $themes[$key]->prefix = $key;
      }
    }
  }

  // Extract current files from database.
  system_get_files_database($themes, 'theme');
  db_query("DELETE FROM {system} WHERE type = 'theme'");
  foreach ($themes as $theme) {
    $theme->owner = !isset($theme->owner) ? '' : $theme->owner;
    db_query("INSERT INTO {system} (name, owner, info, type, filename, status, throttle, bootstrap) VALUES ('%s', '%s', '%s', '%s', '%s', %d, %d, %d)", $theme->name, $theme->owner, serialize($theme->info), 'theme', $theme->filename, isset($theme->status) ? $theme->status : 0, 0, 0);
  }
}
