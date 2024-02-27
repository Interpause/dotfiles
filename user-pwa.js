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
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.compositor", true);
user_pref("gfx.webrender.enabled", true); // redundant; should auto-enable
user_pref("gfx.webrender.precache-shaders", true);
user_pref("gfx.webrender.program-binary-disk", true);
user_pref("gfx.webrender.software.d3d11", false); // disable software rendering for Direct3D 11
user_pref("gfx.canvas.accelerated", true);
user_pref("gfx.canvas.accelerated.cache-items", 32768);
user_pref("gfx.canvas.accelerated.cache-size", 4096);
user_pref("gfx.content.skia-font-cache-size", 80);
user_pref("image.mem.decode_bytes_at_a_time", 65536);
user_pref("image.mem.shared.unmap.min_expiration_ms", 120000);
user_pref("image.cache.size", 10485760);
user_pref("media.memory_cache_max_size", 1048576);
user_pref("media.memory_caches_combined_limit_kb", 3145728);
user_pref("media.ffmpeg.vaapi.enabled", true);
user_pref("layers.gpu-process.enabled", true);
user_pref("webgl.use-canvas-render-thread", true);

// Better Scrolling/Scrolling fix on Wayland
// See: https://bugzilla.mozilla.org/show_bug.cgi?id=1752862
user_pref("apz.gtk.pangesture.delta_mode", 2);
user_pref("apz.gtk.pangesture.pixel_delta_mode_multiplier", 25); // scroll speed
user_pref("apz.gtk.kinetic_scroll.enabled", true); // redundant; inertial scrolling
user_pref("general.smoothScroll", false); // Disabled as we enabled MOZ_USE_XINPUT2

// General Performance
user_pref("browser.preferences.defaultPerformanceSettings.enabled", false); // overrides settings if enabled
user_pref("dom.ipc.processCount", 1); // tradeoff performance & memory
user_pref("dom.ipc.processCount.webIsolated", 1);
user_pref("browser.safebrowsing.phishing.enabled", false); // Uses CPU
user_pref("browser.safebrowsing.malware.enabled", false); // Uses CPU
user_pref("fission.autostart", false);
user_pref("privacy.partition.network_state", false);

// Cache Tweaks
user_pref("browser.cache.disk.capacity", 8192000);
user_pref("browser.cache.disk.smart_size.enabled", false);
user_pref("browser.cache.frecency_half_life_hours", 18);
user_pref("browser.cache.max_shutdown_io_lag", 16);
user_pref("browser.cache.memory.capacity", 2097152);
user_pref("browser.cache.memory.max_entry_size", 327680);
user_pref("network.ssl_tokens_cache_capacity", 32768);
user_pref("browser.cache.disk.metadata_memory_limit", 15360);
user_pref("browser.sessionstore.resume_from_crash", false);
// user_pref("browser.sessionstore.interval", 60000);

// Misc
user_pref("extensions.pocket.enabled", false); // only way to disable Pocket
user_pref("browser.preferences.experimental", true); // enable tab in about:preferences
user_pref("extensions.pictureinpicture.enable_picture_in_picture_overrides", true);
user_pref("media.videocontrols.picture-in-picture.improved-video-controls.enabled", true);
user_pref("browser.aboutConfig.showWarning", false);
// user_pref("browser.tabs.inTitlebar", 1); // firefoxpwa already does this
user_pref("browser.warnOnQuitShortcut", false);
// user_pref("browser.uidensity", 1); // firefoxpwa already does this
user_pref("layout.spellcheckDefault", 0);
user_pref("privacy.webrtc.globalMuteToggles", true);

// Privacy
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_ever_enabled", true);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("doh-rollout.disable-heuristics", true);
// user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.annotate_channels.strict_list.enabled", true);
user_pref("privacy.donottrackheader.enabled", true);
// user_pref("privacy.partition.network_state.ocsp_cache", true);
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

