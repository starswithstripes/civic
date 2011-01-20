; Civic makefile
; ----------------
; Build a Drupal installation profile of Civic.
; Project Website: http://civicsites.org
; Git: http://github.com/starswithstripes/civic

; Core version
; ------------
core = 6.x

; API version
; ------------
api = 2

; Contrib projects
; ----------------
projects[addthis][subdir] = "contrib"
projects[addthis][version] = 2.9

projects[admin][subdir] = "contrib"
projects[admin][version] = 2.0

projects[advanced_help][subdir] = "contrib"
projects[advanced_help][version] = 1.2

projects[cck][subdir] = "contrib"
projects[cck][version] = 2.8

projects[constant_contact][subdir] = "contrib"
projects[constant_contact][version] = 2.1

projects[crmapi][subdir] = "contrib"
projects[context][subdir] = "contrib"
projects[context][version] = 3.0

projects[crmapi][subdir] = "contrib"
projects[crmapi][version] = 1.2

projects[crmngp][subdir] = "contrib"
projects[crmngp][version] = 1.28

projects[ctools][subdir] = "contrib"
projects[ctools][version] = 1.7

projects[date][subdir] = "contrib"
projects[date][version] = 2.6

projects[diff][subdir] = "contrib"
projects[diff][version] = 2.1

projects[embed_gmap][subdir] = "contrib"
projects[embed_gmap][version] = 1.2

projects[fckeditor][subdir] = "contrib"
projects[fckeditor][version] = 1.4

projects[features][subdir] = "contrib"
projects[features][version] = 1.0

projects[feeds][subdir] = "contrib"
projects[feeds][version] = 1.0-alpha11

projects[filefield][subdir] = "contrib"
projects[filefield][version] = 3.7

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = 3.0 

projects[i18n][subdir] = "contrib"
projects[i18n][version] = 1.7

projects[imageapi][subdir] = "contrib"
projects[imageapi][version] = 1.9

projects[imagecache][subdir] = "contrib"
projects[imagecache][version] = 2.0-beta10

projects[imagefield][subdir] = "contrib"
projects[imagefield][version] = 3.7

projects[jquery_plugin][subdir] = "contrib"
projects[jquery_plugin][version] = 1.10

projects[jquery_ui][subdir] = "contrib"
projects[jquery_ui][version] = 1.4

projects[mailchimp][subdir] = "contrib"
projects[mailchimp][version] = 2.2

projects[nodequeue][subdir] = "contrib"
projects[nodequeue][version] = 2.9

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = 1.5

projects[role_delegation][subdir] = "contrib"
projects[role_delegation][version] = 1.3

projects[rotor][subdir] = "contrib"
projects[rotor][version] = 2.7

projects[seo_checklist][subdir] = "contrib"
projects[seo_checklist][version] = 3.0

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = 2.0

projects[submitagain][subdir] = "contrib"
projects[submitagain][version] = 1.4

projects[taxonomy_manager][subdir] = "contrib"
projects[taxonomy_manager][version] = 2.2

projects[text_resize][subdir] = "contrib"
projects[text_resize][version] = 1.5

projects[token][subdir] = "contrib"
projects[token][version] = 1.15

projects[upload_element][subdir] = "contrib"
projects[upload_element][version] = 1.2

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = 2.1

projects[video_filter][subdir] = "contrib"
projects[video_filter][version] = 2.7

projects[views][subdir] = "contrib"
projects[views][version] = 2.12

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = 1.10

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = 2.3

projects[views_slideshow_imageflow][subdir] = "contrib"
projects[views_slideshow_imageflow][version] = 2.x-dev

; Developer (Contrib)
; ------------------
projects[coder][subdir] = "developer"
; projects[coder][version] = X.X 

projects[devel][subdir] = "developer"
; projects[devel][version] = X.X

projects[schema][subdir] = "developer"
; projects[schema][version] = X.X

projects[simpletest][subdir] = "developer"
; projects[simpletest][version] = X.X"

; Localization 
; l10n
; projects[l10n_client][subdir] = "l10n"
; projects[l10n_update][subdir] = "l10n"

; Civic Features Modules
; ---------------------- 
projects[civic_features][type] = "module"
projects[civic_features][download][type] = "git" 
projects[civic_features][download][url] = "git://github.com/bhirsch/civic_features.git"
; projects[civic_features][download][tag] = 0.0

; Custom 
; ------
projects[addthissubtheme][type] = "module"
projects[addthissubtheme][subdir] = "custom"
projects[addthissubtheme][download][type] = "git"
projects[addthissubtheme][download][url] = "git://github.com/bhirsch/addthissubtheme.git"
; projects[addthissubtheme][download][tag] = "X.X"

projects[contactblock][type] = "module"
projects[contactblock][subdir] = "custom"
projects[contactblock][download][type] = "git"
projects[contactblock][download][url] = "git://github.com/bhirsch/contactblock.git"
projects[contactblock][download][tag] = "1.0"

projects[faccess][type] = "module"
projects[faccess][subdir] = "custom"
projects[faccess][download][type] = "git"
projects[faccess][download][url] = "git://github.com/bhirsch/faccess.git"
projects[faccess][download][tag] = "6.x-1.0"

projects[fcontrolpanel][type] = "module"
projects[fcontrolpanel][subdir] = "custom"
projects[fcontrolpanel][download][type] = "git"
projects[fcontrolpanel][download][url] = "git://github.com/bhirsch/fcontrolpanel.git"
; projects[fcontrolpanel][download][tag] = "6.x-1.0"

projects[owhtranslate][type] = "module"
projects[owhtranslate][subdir] = "custom"
projects[owhtranslate][download][type] = "git"
projects[owhtranslate][download][url] = "git://github.com/bhirsch/owhtranslate.git"
; projects[owhtranslate][download][tag] = "X.X"

projects[related_posts][type] = "module"
projects[related_posts][subdir] = "custom"
projects[related_posts][download][type] = "git"
projects[related_posts][download][url] = "git://github.com/bhirsch/related_posts.git"
; projects[related_posts][download][tag] = "X.X"

projects[subtheme][type] = "module"
projects[subtheme][subdir] = "custom"
projects[subtheme][download][type] = "git"
projects[subtheme][download][url] = "git://github.com/bhirsch/subtheme.git"
; projects[subtheme][download][tag] = "X.X"

projects[sws][type] = "module"
projects[sws][subdir] = "custom"
projects[sws][download][type] = "git"
projects[sws][download][url] = "git://github.com/bhirsch/sws.git"
; projects[sws][download][tag] = "X.X"

projects[sws_fields][type] = "module"
projects[sws_fields][subdir] = "custom"
projects[sws_fields][download][type] = "git"
projects[sws_fields][download][url] = "git://github.com/bhirsch/sws_fields.git"
; projects[sws_fields][download][tag] = "X.X"

projects[sws_mgmt][type] = "module"
projects[sws_mgmt][subdir] = "custom"
projects[sws_mgmt][download][type] = "git"
projects[sws_mgmt][download][url] = "git://github.com/bhirsch/sws_mgmt.git"
; projects[sws_mgmt][download][tag] = "X.X"

projects[swsngp][type] = "module"
projects[swsngp][subdir] = "custom"
projects[swsngp][download][type] = "git"
projects[swsngp][download][url] = "git://github.com/bhirsch/swsngp.git"
; projects[swsngp][download][tag] = "X.X"

projects[user1][type] = "module"
projects[user1][subdir] = "custom"
projects[user1][download][type] = "git"
projects[user1][download][url] = "git://github.com/bhirsch/user1.git"
; projects[user1][download][tag] = "X.X"

projects[whitehouse_subtheme][type] = "module"
projects[whitehouse_subtheme][subdir] = "custom"
projects[whitehouse_subtheme][download][type] = "git"
projects[whitehouse_subtheme][download][url] = "git://github.com/bhirsch/whitehouse_subtheme.git"
; projects[whitehouse_subtheme][download][tag] = "X.X"

; Themes
; ------
projects[rubik][download][type] = "get"
projects[rubik][download][url] = "http://code.developmentseed.org/sites/code.developmentseed.org/files/fserver/rubik-6.x-3.0-beta1.tgz"
projects[rubik][directory_name] = "rubik"
projects[rubik][type] = "theme"

projects[tao][download][type] = "get"
projects[tao][download][url] = "http://code.developmentseed.org/sites/code.developmentseed.org/files/fserver/tao-6.x-3.1.tgz"
projects[tao][directory_name] = "tao"
projects[tao][type] = "theme"

; projects[zen][directory_name] = "zen"
projects[zen][version] = 1.1
projects[zen][type] = "theme"

projects[whitehouse][type] = "theme"
projects[whitehouse][directory_name] = "whitehouse"
projects[whitehouse][download][type] = "git"
projects[whitehouse][download][url] = "git://github.com/bhirsch/whitehouse.git"
; projects[whitehouse][download][tag] = "X.X"

projects[candidate][type] = "theme"
projects[candidate][directory_name] = "candidate"
projects[candidate][download][type] = "git"
projects[candidate][download][url] = "git://github.com/bhirsch/candidate.git"
; projects[candidate][download][tag] = "X.X"

projects[statehouse][type] = "theme"
projects[statehouse][directory_name] = "statehouse"
projects[statehouse][download][type] = "git"
projects[statehouse][download][url] = "git://github.com/bhirsch/statehouse.git"
; projects[statehouse][download][tag] = "X.X"

; Libraries
; ---------
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.4.2/ckeditor_3.4.2.tar.gz"

libraries[jquery.ui][subdir] = "../modules/contrib/jquery_ui"
libraries[jquery.ui][download][type] = "get"
libraries[jquery.ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
