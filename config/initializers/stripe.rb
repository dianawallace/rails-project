if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_FvkVse3x5KUdnm7LJpbAxroe',
    :secret_key => 'sk_test_V6g1ku7jRk3K5f7voyd0Lyls'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]