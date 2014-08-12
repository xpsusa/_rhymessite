api = 2
core = 7.x

; Contrib
; -------

; When you clone _rhymessite from https://github.com/drupalladder/_rhymessite,
; rhymes module lives here:
;   sites/all/modules/rhymesdistro/rhymes
;
; But when drupal.org packages up Rhymes Distro, it will put rhymes module here:
;   profiles/rhymesdistro/modules/contrib/rhymes
;
; Drupal.org's distro builder does not currently support Drush 7.x's
; contrib_destination property. As a result, drupal.org nests contrib projects
; (modules) inside another contrib project (the rhymesdistro install profile).
; For maintainers who work on their contrib projects inside site repositories,
; nesting contrib projects this way is a headache, because there's no simple way
; to push changes out of the site repo into individual project repos.
;
; The issue is being tracked here:
;   https://drupal.org/node/2281721
;
; Support for contrib_destination was committed to Drush 7.x here:
;   https://github.com/drush-ops/drush/pull/582
;
defaults[projects][subdir] = rhymesdistro
defaults[projects][contrib_destination] = sites/all

projects[ctools][version] = 1.3
projects[features][version] = 2.0
projects[views][version] = 3.7
projects[youtube][version] = 1.1

projects[rhymes][type] = module
projects[rhymes][download][type] = git 
projects[rhymes][download][url] = http://git.drupal.org/project/rhymes.git
projects[rhymes][tag] = 7.x-1.5
