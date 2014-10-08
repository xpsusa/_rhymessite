; Rhymes Distro
; -------------

core = 7.x
api = 2
includes[core] = drupal-org-core.make

projects[rhymesdistro][type] = profile
projects[rhymesdistro][download][type] = git 
projects[rhymesdistro][download][url] = http://git.drupal.org/project/rhymesdistro.git
projects[rhymesdistro][tag] = 7.x-1.5

; Do not apply default subdir to rhymesdistro profile.
projects[rhymesdistro][subdir] = ''
