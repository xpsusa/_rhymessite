; Include rhymesdistro's make files as base for this build.
; ---------------------------------------------------------
includes[base] = projects/rhymesdistro/build-rhymesdistro.make
includes[contrib] = projects/rhymesdistro/drupal-org.make

; Below here, override anything included above and add any site-specific info.
; ----------------------------------------------------------------------------

; Set default subdirectory for modules included by distro as rhymesdistro.
defaults[projects][subdir] = rhymesdistro

; Do not apply default above to rhymesdistro profile.
projects[rhymesdistro][subdir] = ''
