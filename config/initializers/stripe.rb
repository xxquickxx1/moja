Rails.configuration.stripe = {
  :publishable_key => "pk_test_QVt9bnanCQNxGIjakahGxjen",
  :secret_key      => "sk_test_vedgCdik2hGAjpSG1h0H8XCk"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]