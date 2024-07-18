// prefs
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.tabs.firefox-view", false);
user_pref("cookiebanners.service.mode", 2);
user_pref("dom.private-attribution.submission.enabled", false);
user_pref("identity.fxaccounts.enabled", false);
user_pref("media.videocontrols.picture-in-picture.enabled", false);
user_pref("ui.key.menuAccessKeyFocuses", false);

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
//user_pref("browser.discovery.containers.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("extensions.pocket.enabled", false);
//user_pref("extensions.screenshots.disabled", true);
//user_pref("geo.enabled", false);

// search
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);

// new-tab 
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories",false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned", "");
user_pref("browser.newtabpage.pinned", "[]");

// webrtc
user_pref("media.peerconnection.enabled", true);
user_pref("media.peerconnection.ice.default_address_only", true);
user_pref("media.peerconnection.ice.no_host", true);

// crypto
user_pref("security.ssl.require_safe_negotiation", false);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("security.tls.version.min", 1);
user_pref("security.ssl3.dhe_rsa_aes_128_sha", false);
user_pref("security.ssl3.dhe_rsa_aes_256_sha", false);

// network
user_pref("network.IDN_show_punycode", true);
user_pref("network.cookie.cookieBehavior", 1);
user_pref("network.trr.mode", 5);

// disable telemetry
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("security.certerrors.recordEventTelemetry", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);

// disable safebrowsing
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);

// disable push notifications
user_pref("dom.push.enabled", false); 
user_pref("dom.webnotifications.enabled", false); 
user_pref("dom.webnotifications.serviceworker.enabled", false);
user_pref("notification.feature.enabled", false);
