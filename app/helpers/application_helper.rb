module ApplicationHelper

  # Ref. https://ddnexus.github.io/pagy/api/frontend
  include Pagy::Frontend


  # --- friendly URL for SEO ---
  # Ref. https://github.com/kaminari/kaminari#creating-friendly-urls-and-caching

  # --- pagy fancy routes ---
  # Ref. https://ddnexus.github.io/pagy/how-to.html#customizing-the-url
  def pagy_url_for(page, pagy)
    params = request.query_parameters.merge(:only_path => true, pagy.vars[:page_param] => page )
    url_for(params)
  end
end
