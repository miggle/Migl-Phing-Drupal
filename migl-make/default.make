; -------------------------------------
; MIGGLE DRUPAL 7 - BASIC MAKE
; -------------------------------------

; -------------------------------------
; CORE INFO
; -------------------------------------
core = 7.x
api = 2

projects[] = drupal

; -------------------------------------
; MODULES
; -------------------------------------

; DEVELOPMENT
projects[devel][subdir] = contrib
projects[features_override][subdir] = contrib

; USABILITY
projects[admin_menu][subdir] = contrib
projects[module_filter][subdir] = contrib

; PERFORMANCE
projects[memcache][subdir] = contrib
; projects[varnish][subdir] = contrib

; CORE CONTRIB
projects[views][subdir] = contrib
projects[ctools][subdir] = contrib
projects[token][subdir] = contrib
projects[entity][subdir] = contrib
projects[features][subdir] = contrib
projects[features][patch][] = "https://drupal.org/files/issues/drush-fra-issue-2210291-2.patch"
projects[libraries][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[strongarm][subdir] = contrib

; SEARCH
projects[apachesolr][subdir] = contrib
projects[apachesolr_multisitesearch][subdir] = contrib
projects[facetapi][subdir] = contrib

; FIELD, MEDIA AND CONTENT EDITING ENHANCEMENTS
projects[wysiwyg][subdir] = contrib
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg-ckeditor4-1853550-4.patch"
projects[linkit][subdir] = contrib
projects[link][subdir] = contrib
projects[email][subdir] = contrib
projects[field_group][subdir] = contrib
projects[media][version] = 2.0-alpha3
projects[media][subdir] = contrib
projects[media][patch][] = "https://www.drupal.org/files/media-missing-attributes-2067063-12.do-not-test.patch"
projects[file_entity][subdir] = contrib
projects[inline_entity_form][subdir] = contrib
projects[date][subdir] = contrib

; SITE BUILDING TOOLS
projects[rules][subdir] = contrib
projects[ds][subdir] = contrib
projects[context][subdir] = contrib
projects[context][patch][] = "https://www.drupal.org/files/context-795058-override-block-titles-58.patch"
projects[context][patch][] = "https://www.drupal.org/files/context-sitewide_non_admin_condition-2089925-5.patch"
projects[eck][subdir] = contrib
projects[entityform][subdir] = contrib

; SEO
projects[pathauto][subdir] = contrib
projects[globalredirect][subdir] = contrib
projects[google_analytics][subdir] = contrib
projects[xmlsitemap][subdir] = contrib
projects[metatag][subdir] = contrib
projects[site_verify][subdir] = contrib
projects[redirect][subdir] = contrib
projects[redirect][version] = 1.0-rc1
projects[redirect][patch][] = "https://drupal.org/files/issues/redirect.circular-loops.1796596-119.patch"
projects[redirect][patch][] = "https://drupal.org/files/redirect-migrate-support-1116408-69.patch"

; -------------------------------------
; CUSTOM
; -------------------------------------
projects[master_dependency][type] = module
projects[master_dependency][download][type] = git
projects[master_dependency][download][url] = "https://github.com/miggle/master_dependency.git"
projects[master_dependency][subdir] = custom


; -------------------------------------
; THEMES
; -------------------------------------

projects[] = shiny
; projects[] = bassline

; -------------------------------------
; LIBRARIES
; -------------------------------------

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.2/ckeditor_4.4.2_full.zip"
libraries[ckeditor][directory_name] = "ckeditor"

