Twitter::Application.configure do

  config.cache_classes = true
  config.eager_load = false

  config.action_mailer.delivery_method = :test

  config.serve_static_assets  = true
  config.static_cache_control = "public, max-age=3600"

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false



  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr
end
