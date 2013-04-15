# Name of the CMS Fiona Instance to access
RailsConnector::Configuration.instance_name = 'default'

# Enable Rails Connector Addons.
# Please refer to the Infopark Knowledge Base for more information on addons.
RailsConnector::Configuration.enable(
  # :comments,
  # :google_analytics,
   :crm,
  # :ratings,
  # :rss,
  :search,
  # :seo_sitemap,
  :time_machine
)

# Search should be configured in config/rails_connector.yml

# RSS-Feed:
#
# Specify which Object should be used for the RSS feed's parent folder
# RailsConnector::Configuration::Rss.root = lambda { NamedLink.get_object('news') }

# Google Analytics:
#
# RailsConnector::Configuration::GoogleAnalytics.domains(
#   '<your.domain.com>' => '<your-ga-code-1>',
#   '<your.domain.de>' => '<your-ga-code-2>'
# )
