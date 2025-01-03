{
  enable = true;
  profiles.tfkhdyt = {
    id = 0;
    settings = {
      "datareporting.policy.dataSubmissionEnabled" = false;
      "datareporting.healthreport.uploadEnabled" = false;
      "toolkit.telemetry.unified" = false;
      "toolkit.telemetry.enabled" = false;
      "toolkit.telemetry.server" = "data:,";
      "toolkit.telemetry.archive.enabled" = false;
      "toolkit.telemetry.newProfilePing.enabled" = false;
      "toolkit.telemetry.shutdownPingSender.enabled" = false;
      "toolkit.telemetry.updatePing.enabled" = false;
      "toolkit.telemetry.bhrPing.enabled" = false;
      "toolkit.telemetry.firstShutdownPing.enabled" = false;
      "toolkit.telemetry.coverage.opt-out" = true;
      "toolkit.coverage.opt-out" = true;
      "toolkit.coverage.endpoint.base" = "";
      "browser.newtabpage.activity-stream.feeds.telemetry" = false;
      "browser.newtabpage.activity-stream.telemetry" = false;
      "app.shield.optoutstudies.enabled" = false;
      "browser.safebrowsing.downloads.remote.enabled" = false;
      "network.prefetch-next" = false;
      "network.dns.disablePrefetch" = true;
      "network.dns.disablePrefetchFromHTTPS" = true;
      "network.predictor.enabled" = false;
      "network.predictor.enable-prefetch" = false;
      "network.http.speculative-parallel-limit" = 0;
      "browser.places.speculativeConnect.enabled" = false;
      "browser.urlbar.speculativeConnect.enabled" = false;
      "browser.urlbar.quicksuggest.enabled" = false;
      "browser.urlbar.suggest.quicksuggest.nonsponsored" = false;
      "browser.urlbar.suggest.quicksuggest.sponsored" = false;
      "browser.search.suggest.enabled" = false;
      "browser.urlbar.suggest.searches" = false;
      "browser.urlbar.trending.featureGate" = false;
      "browser.urlbar.addons.featureGate" = false;
      "browser.urlbar.mdn.featureGate" = false;
      "browser.urlbar.pocket.featureGate" = false;
      "browser.urlbar.weather.featureGate" = false;
      "browser.urlbar.yelp.featureGate" = false;
      "browser.ctrlTab.sortByRecentlyUsed" = true;
      "browser.aboutConfig.showWarning" = false;
      "browser.download.useDownloadDir" = false;
      "font.name.serif.x-western" = "Inter Variable";
    };
    # search = {
    #   engines = {
    #     "Bukan Google" = {
    #       urls = [ { template = "https://search.tfkhdyt.my.id/search?q={searchTerms}"; } ];
    #       definedAliases = [ "@bg" ];
    #     };
    #   };
    #   # default = "Bukan Google";
    #   force = true;
    # };
  };
}
