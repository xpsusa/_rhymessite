api = 2
core = 7.x

; Contrib
; -------

; Note: Drupal.org's distro builder organizes directories differently than the
; Rhymes Distro project maintainers. Drupal.org nests contrib projects inside
; other contrib projects. But for maintainers who work on their projects inside
; site repositories, nesting contrib projects this way is a problem.
;
; When drupal.org packages up Rhymes Distro, it will put rhymes module here:
;   profiles/rhymesdistro/modules/contrib/rhymes
;
; But if you clone _rhymessite from https://github.com/drupalladder/_rhymessite,
; rhymes module lives here:
;   sites/all/modules/rhymesdistro/rhymes
;
; _rhymessite/build.make overrides this line:
;   projects[rhymes][subdir] = contrib
;
; like this:
;   defaults[projects][subdir] = rhymesdistro
;
; Hopefully one day drupal.org's distro builder will support the alternate
; approach seen in _rhymessite. Until then, site maintainers can use the pattern
; see in _rhymessite to make their own distros easy to maintain, update, and
; contribute to.
;
defaults[projects][subdir] = contrib

projects[ctools][version] = 1.3

projects[views][version] = 3.7

projects[youtube][version] = 1.1

projects[rhymes][type] = module
projects[rhymes][download][type] = git
projects[rhymes][download][url] = https://github.com/DrupalLadder/rhymes.git
projects[rhymes][tag] = 7.x-1.4

