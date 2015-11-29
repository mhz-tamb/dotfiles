// disable Hello
user_pref("loop.enabled", false);
// disable Pocket
user_pref("browser.pocket.enabled", false);

// move cache to ram
user_pref("browser.cache.disk.enable", false);
user_pref("browser.cache.memory.enable", true);

user_pref("browser.urlbar.formatting.enabled", false);
user_pref("browser.urlbar.trimURLs", false);

// restore tabs
user_pref("browser.startup.page", 3);
// ask download dir
user_pref("browser.download.useDownloadDir", false);

user_pref("devtools.theme", "dark");
user_pref("devtools.editor.keymap", "vim");

// google default search engine
user_pref("browser.search.defaultenginename", "Google");
user_pref("browser.search.suggest.enabled", false);
