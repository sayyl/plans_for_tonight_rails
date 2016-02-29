Rails.configuration.stripe = {
  :publishable_key => 'pk_test_UsD2kWvGk2gW3FS6qxTUhoat',
  :secret_key      => 'sk_test_7hnBs73i4q4qncwCsS4sEfDc' 
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]