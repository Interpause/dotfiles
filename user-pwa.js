// See https://kb.mozillazine.org/User.js_file about this config files
// Copy to ~/.local/share/firefoxpwa/profiles/*/user.js as a preset

// WebRTC Audio Post-processing
// there are cases where you don't want to process the audio, or handle it yourself alr
// user_pref("media.getusermedia.aec_enabled", false);
// user_pref("media.getusermedia.agc_enabled", false);
// user_pref("media.getusermedia.noise_enabled", false);
// user_pref("media.getusermedia.hpf_enabled", false);
// user_pref("media.getusermedia.residual_echo_enabled", false);
// user_pref("media.getusermedia.transient_enabled", false);

// Graphics Performance
user_pref("gfx.canvas.accelerated", true);
user_pref("webgl.use-canvas-render-thread", true);
user_pref("media.ffmpeg.vaapi.enabled", true);

// WebRender is the new Firefox rendering engine
user_pref("gfx.webrender.compositor", true); // hard-masked in firefox-109.0.1
user_pref("gfx.webrender.enabled", true); // redundant; should auto-enable
// user_pref("gfx.webrender.precache-shaders", true);
user_pref("gfx.webrender.software.d3d11", false); // disable software rendering for Direct3D 11

// Better Scrolling/Scrolling fix on Wayland
// See: https://bugzilla.mozilla.org/show_bug.cgi?id=1752862
user_pref("apz.gtk.pangesture.delta_mode", 2);
user_pref("apz.gtk.pangesture.pixel_delta_mode_multiplier", 25); // scroll speed
user_pref("apz.gtk.kinetic_scroll.enabled", true); // redundant; inertial scrolling
user_pref("general.smoothScroll", true); // redundant

// General Performance
user_pref("browser.preferences.defaultPerformanceSettings.enabled", false); // overrides settings if enabled
user_pref("dom.ipc.processCount", 2); // tradeoff performance & memory

// Misc
user_pref("extensions.pocket.enabled", false); // only way to disable Pocket
user_pref("browser.preferences.experimental", true); // enable tab in about:preferences
user_pref("extensions.pictureinpicture.enable_picture_in_picture_overrides", true);
user_pref("media.videocontrols.picture-in-picture.improved-video-controls.enabled", true);
user_pref("browser.aboutConfig.showWarning", false);
// user_pref("browser.tabs.inTitlebar", 1);
user_pref("browser.warnOnQuitShortcut", false);
// user_pref("browser.uidensity", 1);
user_pref("layout.spellcheckDefault", 0);
user_pref("privacy.webrtc.globalMuteToggles", true);

// Privacy
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_ever_enabled", true);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("doh-rollout.disable-heuristics", true);
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.annotate_channels.strict_list.enabled", true);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("privacy.partition.network_state.ocsp_cache", true);
user_pref("privacy.purge_trackers.date_in_cookie_database", "0");
user_pref("privacy.query_stripping.enabled", true);
user_pref("privacy.query_stripping.enabled.pbmode", true);
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("signon.management.page.breach-alerts.enabled", false);
user_pref("signon.rememberSignons", false);


// Bugs
// Firefox fails to detect for some reason
user_pref("layout.frame_rate", 165);
// Conflicts with KDE Plasma Browser Integration
user_pref("media.hardwaremediakeys.enabled", false);

