; Civic makefile
; ----------------
; Build a Drupal installation profile of Civic.
; Project Website: http://civicsites.org
; Git: http://github.com/starswithstripes/civic

;;;; Note: Civic for Drupal 7 is in development. There is no
;;;; alpha release yet. Modules where D7 versions are 
;;;; not available are commented out below like this: 
;;;;
;;;; Also note: This make file is based on 6.x-1.0-alpha2, not alpha3.
;;;; 
;;;; projects[missing_upgrade][subdir] = "contrib"
;;;; projects[missing_upgrade][version] = 2.1-beta1

; Core version
; ------------
core = 7.x

; API version
; ------------
api = 2

; Contrib projects
; ----------------
projects[addthis][subdir] = "contrib"
projects[addthis][version] = 2.1-beta1

projects[admin][subdir] = "contrib"
projects[admin][version] = 2.0-beta3

projects[advanced_help][subdir] = "contrib"
projects[advanced_help][version] = 1.0-beta1

projects[cck][subdir] = "contrib"
projects[cck][version] = 2.x-dev

;;;; projects[constant_contact][subdir] = "contrib"
;;;; projects[constant_contact][version] = 2.1

projects[context][subdir] = "contrib"
projects[context][version] = 3.0-beta1

;;;; projects[crmapi][subdir] = "contrib"
;;;; projects[crmapi][version] = 1.2

;;;; projects[crmngp][subdir] = "contrib"
;;;; projects[crmngp][version] = 1.28

projects[ctools][subdir] = "contrib"
projects[ctools][version] = 1.0-alpha4

projects[date][subdir] = "contrib"
projects[date][version] = 2.0-alpha1

projects[diff][subdir] = "contrib"
projects[diff][version] = 2.0-beta2

;;;; projects[embed_gmap][subdir] = "contrib"
;;;; projects[embed_gmap][version] = 1.2

;;;; remove ;;;; projects[fckeditor][subdir] = "contrib"
;;;; remove ;;;; projects[fckeditor][version] = 1.4

projects[features][subdir] = "contrib"
projects[features][version] = 1.0-beta2

projects[feeds][subdir] = "contrib"
projects[feeds][version] = 2.0-alpha3

;;;; included in core ;;;; projects[filefield][subdir] = "contrib"
;;;; included in core ;;;; projects[filefield][version] = 3.7

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = 1.2

projects[i18n][subdir] = "contrib"
projects[i18n][version] = 1.0-beta4

;;;; included in core ;;;; projects[imageapi][subdir] = "contrib"
;;;; included in core ;;;; projects[imageapi][version] = 1.9

;;;; included in core ;;;; projects[imagecache][subdir] = "contrib"
;;;; included in core ;;;; projects[imagecache][version] = 2.0-beta10

;;;; included in core ;;;; projects[imagefield][subdir] = "contrib"
;;;; included in core ;;;; projects[imagefield][version] = 3.7

projects[jquery_plugin][subdir] = "contrib"
projects[jquery_plugin][version] = 1.0

;;;; projects[jquery_ui][subdir] = "contrib"
;;;; projects[jquery_ui][version] = 1.4

projects[mailchimp][subdir] = "contrib"
projects[mailchimp][version] = 1.x-dev

projects[nodequeue][subdir] = "contrib"
projects[nodequeue][version] = 2.0-alpha1

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = 1.0-beta1

projects[role_delegation][subdir] = "contrib"
projects[role_delegation][version] = 1.0

;;;; projects[rotor][subdir] = "contrib"
;;;; projects[rotor][version] = 2.7

;;;; projects[seo_checklist][subdir] = "contrib"
;;;; projects[seo_checklist][version] = 3.0

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = 2.0-beta2

;;;; projects[submitagain][subdir] = "contrib"
;;;; projects[submitagain][version] = 1.4

projects[taxonomy_manager][subdir] = "contrib"
projects[taxonomy_manager][version] = 1.0-beta1

projects[text_resize][subdir] = "contrib"
projects[text_resize][version] = 1.7

projects[token][subdir] = "contrib"
projects[token][version] = 1.0-beta1

;;;; managed_file element provide by core ;;;; projects[upload_element][subdir] = "contrib"
;;;; managed_file element provide by core ;;;; projects[upload_element][version] = 1.2

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = 2.0

projects[video_filter][subdir] = "contrib"
projects[video_filter][version] = 3.0-beta1

projects[views][subdir] = "contrib"
projects[views][version] = 3.0-beta3

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = 3.x-dev

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = 3.0-alpha1

;;;; projects[views_slideshow_imageflow][subdir] = "contrib"
;;;; projects[views_slideshow_imageflow][version] = 2.x-dev

; Developer (Contrib)
; ------------------
projects[coder][subdir] = "developer"
; projects[coder][version] = X.X 

projects[devel][subdir] = "developer"
; projects[devel][version] = X.X

projects[schema][subdir] = "developer"
; projects[schema][version] = X.X

;;;; core ;;;; projects[simpletest][subdir] = "developer"
;;;; core ;;;; projects[simpletest][version] = X.X"

; Localization 
; l10n
; projects[l10n_client][subdir] = "l10n"
; projects[l10n_update][subdir] = "l10n"

;;;; ; Civic Features Modules
;;;; ; ---------------------- 
;;;; projects[civic_features][type] = "module"
;;;; projects[civic_features][download][type] = "git" 
;;;; projects[civic_features][download][url] = "git://github.com/bhirsch/civic_features.git"
;;;; projects[civic_features][download][tag] = "6.x-1.2"

; Custom 
; ------
;;;; projects[addthissubtheme][type] = "module"
;;;; projects[addthissubtheme][subdir] = "custom"
;;;; projects[addthissubtheme][download][type] = "git"
;;;; projects[addthissubtheme][download][url] = "git://github.com/bhirsch/addthissubtheme.git"
;;;; projects[addthissubtheme][download][tag] = "6.x-1.0"

;;;; projects[contactblock][type] = "module"
;;;; projects[contactblock][subdir] = "custom"
;;;; projects[contactblock][download][type] = "git"
;;;; projects[contactblock][download][url] = "git://github.com/bhirsch/contactblock.git"
;;;; projects[contactblock][download][tag] = "1.0"

;;;; projects[faccess][type] = "module"
;;;; projects[faccess][subdir] = "custom"
;;;; projects[faccess][download][type] = "git"
;;;; projects[faccess][download][url] = "git://github.com/bhirsch/faccess.git"
;;;; projects[faccess][download][tag] = "6.x-1.0"

projects[fcontrolpanel][type] = "module"
projects[fcontrolpanel][subdir] = "custom"
projects[fcontrolpanel][download][type] = "git"
projects[fcontrolpanel][download][url] = "git://github.com/bhirsch/fcontrolpanel.git"
projects[fcontrolpanel][download][branch] = "7.x-1.x"
; projects[fcontrolpanel][download][tag] = ""

;;;; projects[owhtranslate][type] = "module"
;;;; projects[owhtranslate][subdir] = "custom"
;;;; projects[owhtranslate][download][type] = "git"
;;;; projects[owhtranslate][download][url] = "git://github.com/bhirsch/owhtranslate.git"
;;;; ; projects[owhtranslate][download][tag] = "X.X"

;;;; projects[related_posts][type] = "module"
;;;; projects[related_posts][subdir] = "custom"
;;;; projects[related_posts][download][type] = "git"
;;;; projects[related_posts][download][url] = "git://github.com/bhirsch/related_posts.git"
;;;; projects[related_posts][download][tag] = "6.x-1.0"

projects[mtheme][type] = "module"
projects[mtheme][subdir] = "custom"
projects[mtheme][download][type] = "git"
projects[mtheme][download][url] = "git://github.com/bhirsch/mtheme.git"
projects[mtheme][download][branch] = "7.x-1.x"
; projects[mtheme][download][tag] = "6.x-1.0-alpha4"

projects[subtheme][type] = "module"
projects[subtheme][subdir] = "custom"
projects[subtheme][download][type] = "git"
projects[subtheme][download][url] = "git://github.com/bhirsch/subtheme.git"
projects[subtheme][download][branch] = "7.x-1.x"
; projects[subtheme][download][tag] = "6.x-1.0-alpha5"

;;;; projects[sws][type] = "module"
;;;; projects[sws][subdir] = "custom"
;;;; projects[sws][download][type] = "git"
;;;; projects[sws][download][url] = "git://github.com/bhirsch/sws.git"
;;;; projects[sws][download][tag] = "6.x-1.1"

;;;; projects[sws_fields][type] = "module"
;;;; projects[sws_fields][subdir] = "custom"
;;;; projects[sws_fields][download][type] = "git"
;;;; projects[sws_fields][download][url] = "git://github.com/bhirsch/sws_fields.git"
;;;; projects[sws_fields][download][tag] = "6.x-1.0"

;;;; projects[sws_mgmt][type] = "module"
;;;; projects[sws_mgmt][subdir] = "custom"
;;;; projects[sws_mgmt][download][type] = "git"
;;;; projects[sws_mgmt][download][url] = "git://github.com/bhirsch/sws_mgmt.git"
;;;; projects[sws_mgmt][download][tag] = "6.x-1.0"

;;;; projects[swsngp][type] = "module"
;;;; projects[swsngp][subdir] = "custom"
;;;; projects[swsngp][download][type] = "git"
;;;; projects[swsngp][download][url] = "git://github.com/bhirsch/swsngp.git"
;;;; projects[swsngp][download][tag] = "6.x-1.0"

;;;; projects[user1][type] = "module"
;;;; projects[user1][subdir] = "custom"
;;;; projects[user1][download][type] = "git"
;;;; projects[user1][download][url] = "git://github.com/bhirsch/user1.git"
;;;; projects[user1][download][tag] = "6.x-1.0"

; Themes
; ------
;;;; projects[rubik][download][type] = "get"
;;;; projects[rubik][download][url] = "http://code.developmentseed.org/sites/code.developmentseed.org/files/fserver/rubik-6.x-3.0-beta1.tgz"
;;;; projects[rubik][directory_name] = "rubik"
;;;; projects[rubik][type] = "theme"
;;;; 
;;;; projects[tao][download][type] = "get"
;;;; projects[tao][download][url] = "http://code.developmentseed.org/sites/code.developmentseed.org/files/fserver/tao-6.x-3.1.tgz"
;;;; projects[tao][directory_name] = "tao"
;;;; projects[tao][type] = "theme"
;;;; 
;;;; ; projects[zen][directory_name] = "zen"
;;;; projects[zen][version] = 1.1
;;;; projects[zen][type] = "theme"
;;;; 
;;;; projects[whitehouse][type] = "theme"
;;;; projects[whitehouse][directory_name] = "whitehouse"
;;;; projects[whitehouse][download][type] = "git"
;;;; projects[whitehouse][download][url] = "git://github.com/bhirsch/whitehouse.git"
;;;; projects[whitehouse][download][tag] = "6.x-1.1"
;;;; 
;;;; projects[candidate][type] = "theme"
;;;; projects[candidate][directory_name] = "candidate"
;;;; projects[candidate][download][type] = "git"
;;;; projects[candidate][download][url] = "git://github.com/bhirsch/candidate.git"
;;;; projects[candidate][download][tag] = "6.x-1.1"
;;;; 
;;;; projects[statehouse][type] = "theme"
;;;; projects[statehouse][directory_name] = "statehouse"
;;;; projects[statehouse][download][type] = "git"
;;;; projects[statehouse][download][url] = "git://github.com/bhirsch/statehouse.git"
;;;; projects[statehouse][download][tag] = "6.x-1.0"

; Libraries
; ---------
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.5.3/ckeditor_3.5.3.zip"

;;;; libraries[jquery.ui][subdir] = "../modules/contrib/jquery_ui"
;;;; libraries[jquery.ui][download][type] = "get"
;;;; libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;         Notes for upgrade from D6 to D7                   ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; SUMMARY OF UNAVAILABLE PROJECTS:
;;;;---------------------------------
;;;; 
;;;; High Priority
;;;;---------------
;;;; projects[civic_features][subdir] = "custom"
;;;;   @see civic_features below
;;;; projects[related_posts][subdir] = "custom"
;;;; projects[sws][subdir] = "custom"
;;;; projects[sws_fields][subdir] = "custom"
;;;; projects[sws_mgmt][subdir] = "custom"
;;;; projects[user1][subdir] = "custom"
;;;; 
;;;; Medium Priority
;;;;---------------
;;;; projects[embed_gmap][subdir] = "contrib"
;;;; projects[submitagain][subdir] = "contrib"
;;;; projects[faccess][subdir] = "custom"
;;;; projects[contactblock][subdir] = "custom"
;;;; projects[addthissubtheme][subdir] = "custom"
;;;; projects[owhtranslate][subdir] = "custom"
;;;; Themes
;;;; 
;;;; Low Priority
;;;;---------------
;;;; projects[views_slideshow_imageflow][subdir] = "contrib"
;;;; projects[rotor][subdir] = "contrib"
;;;; projects[seo_checklist][subdir] = "contrib"
;;;; projects[constant_contact][subdir] = "contrib"
;;;; projects[crmapi][subdir] = "contrib"
;;;; projects[crmngp][subdir] = "contrib"
;;;; projects[swsngp][subdir] = "custom"
;;;; 
;;;; Depricated/Abandoned
;;;;----------------------
;;;; projects[jquery_ui][subdir] = "contrib"
;;;; remove ;;;; projects[fckeditor][subdir] = "contrib"
;;;; in core ;;;; projects[filefield][subdir] = "contrib"
;;;; in core ;;;; projects[imageapi][subdir] = "contrib"
;;;; in core ;;;; projects[imagecache][subdir] = "contrib"
;;;; in core ;;;; projects[imagefield][subdir] = "contrib"
;;;; in core ;;;; projects[simpletest][subdir] = "developer"
;;;; in core ;;;; @see managed_file element ;;;; projects[upload_element][subdir] = "contrib"

;;;; summary of civic_features
;;;;---------------------------
;;;;
;;;; content types
;;;;--------------
;;;; agenda
;;;; button_block
;;;; events
;;;; issues
;;;; jobs
;;;; legislation
;;;; news_clips
;;;; page
;;;; press_releases
;;;; resources
;;;; slides
;;;; staff
;;;; twitter_feed
;;;; video
;;;;
;;;; control panel
;;;;----------------
;;;; fcp_administration
;;;; fcp_agenda
;;;; fcp_blog
;;;; fcp_buttons
;;;; fcp_createcontent
;;;; fcp_events
;;;; fcp_frontpage
;;;; fcp_issues
;;;; fcp_legislation
;;;; fcp_newsclips
;;;; fcp_pages
;;;; fcp_pressreleases
;;;; fcp_resources
;;;; fcp_sitemanagement
;;;; fcp_sitesetup
;;;; fcp_staff
;;;; fcp_twitterfeed_frontpage
;;;; fcp_video
;;;;
;;;; additional components
;;;;----------------------
;;;; addthis_events
;;;; addthis_frontpage
;;;; addthis_issues
;;;; addthis_newsclips
;;;; addthis_page
;;;; addthis_pressreleases
;;;; blogposts_frontpage
;;;; buttonblock_events
;;;; buttonblock_frontpage
;;;; buttonblock_issues
;;;; buttonblock_newsclips
;;;; buttonblock_page
;;;; buttonblock_pressreleases
;;;; featured_video_fpm
;;;; featuredposts_frontpage
;;;; featuredposts_issues
;;;; featuredposts_newsclips
;;;; featuredposts_page
;;;; featuredposts_pressreleases
;;;; featuredvideo_fontpage
;;;; footer_navigation
;;;; front_page
;;;; front_page_2
;;;; nav_issues
;;;; nav_newsclips
;;;; owh_default_settings
;;;; owh_views
;;;; recent_blog_posts__front_page
;;;; recentposts_frontpage
;;;; relatedposts_events
;;;; relatedposts_issues
;;;; relatedposts_newsclips
;;;; relatedposts_page
;;;; relatedposts_pressreleases
;;;; slideshow_panoramic_1
;;;; slideshow_panoramic_1_num
;;;; slideshow_panoramic_2
;;;; slideshow_panoramic_3
;;;; slideshow_panoramic_4
;;;; slideshow_panoramic_4_nav
;;;; spanish_menus
;;;; sws_admin
;;;; sws_blog
;;;; sws_ngp
;;;; twitter_frontpage
;;;; twocolslideshow_frontpage
;;;; upcomingevents_events
;;;; upcomingevents_frontpage
;;;; whitehouseslideshow_frontpage
