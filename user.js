// References
// https://support.mozilla.org/en-US/kb/how-stop-firefox-making-automatic-connections
// https://github.com/arkenfox/user.js/
// https://github.com/hnhx/user.js

// prefs
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("cookiebanners.service.mode", 2);
user_pref("dom.private-attribution.submission.enabled", false);
user_pref("identity.fxaccounts.enabled", false);
user_pref("media.videocontrols.picture-in-picture.enabled", false);
user_pref("ui.key.menuAccessKeyFocuses", false);
//user_pref("privacy.firstparty.isolate", true);
user_pref("layout.spellcheckDefault", 0);

// fonts
user_pref("font.name.monospace.x-western", "Go Mono");
user_pref("font.name.sans-serif.x-western", "Go");
user_pref("font.name.serif.x-western", "Go");

// perf
user_pref("accessibility.force_disabled", 1);
user_pref("browser.cache.disk.parent_directory", "/run/user/1000/firefox");
user_pref("browser.sessionstore.interval", 600000);
user_pref("nglayout.initialpaint.delay", 0);

// extensions
user_pref("app.normandy.enabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.containers.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("extensions.pocket.enabled", false);
user_pref("extensions.screenshots.disabled", true);
user_pref("extensions.blocklist.enabled", false);
user_pref("extensions.update.autoUpdateDefault", false);
user_pref("extensions.update.enabled", false);
user_pref("extensions.getAddons.cache.enabled", false);

// search
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);

// newtab
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories",false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.showWeather", false);
user_pref("browser.newtabpage.pinned", "[]");
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned", "");
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.searchEngines", "");

// webrtc
//user_pref("media.peerconnection.enabled", true);
//user_pref("media.peerconnection.ice.default_address_only", true);
//user_pref("media.peerconnection.ice.no_host", true);

// crypto
//user_pref("security.ssl.require_safe_negotiation", false);
//user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
//user_pref("security.tls.version.min", 1);
//user_pref("security.ssl3.dhe_rsa_aes_128_sha", false);
//user_pref("security.ssl3.dhe_rsa_aes_256_sha", false);

// network
user_pref("app.update.enabled", false);
//user_pref("network.IDN_show_punycode", true);
user_pref("network.cookie.cookieBehavior", 1);
user_pref("network.trr.mode", 5);
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);

// disable telemetry
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("security.certerrors.recordEventTelemetry", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("messaging-system.rsexperimentloader.enabled", false);

// disable safebrowsing
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);

// disable ocsp
//user_pref("security.OCSP.enabled", 0);
//user_pref("security.OCSP.require", false);

// disable push notifications
user_pref("dom.push.enabled", false); 
user_pref("dom.push.connection.enabled", false);
user_pref("dom.webnotifications.enabled", false); 
user_pref("dom.webnotifications.serviceworker.enabled", false);
user_pref("notification.feature.enabled", false);

// homepage
user_pref("browser.startup.homepage", "chrome://browser/content/blanktab.html");
user_pref("browser.startup.homepage_override.mstone", "ignore");

// disable jit
//user_pref("javascript.options.baselinejit", false);
//user_pref("javascript.options.ion", false);
//user_pref("javascript.options.asmjs", false);

// extra hardening
//user_pref("geo.enabled", false);
//user_pref("browser.search.geoip.url", "http://127.0.0.1/");
//user_pref("media.gmp-gmpopenh264.enabled", false);
//user_pref("app.support.baseURL", "http://127.0.0.1/");
//user_pref("app.feedback.baseURL", "http://127.0.0.1/");
//user_pref("browser.uitour.url", "http://127.0.0.1/");
//user_pref("browser.search.searchEnginesURL", "http://127.0.0.1/");
