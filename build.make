; Include rhymesdistro's make files as base for this build.
; ---------------------------------------------------------
includes[base] = projects/rhymesdistro/build-rhymesdistro.make
includes[contrib] = projects/rhymesdistro/drupal-org.make

; Below here, override anything included above and add any site-specific info.
; ----------------------------------------------------------------------------
includes[custom] = projects/com_rhymessite_www/com_rhymessite_www.make
