class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :receive ]

  def receive
    # Handle the incoming webhook payload here
    # You can access the request body using request.body.read
    payload = request.body.read

    # Process the payload as needed
    # For example, you might want to log it or trigger some action based on its content
    Rails.logger.info("Received webhook payload: #{payload}")

    # Respond with a 200 OK status to acknowledge receipt of the webhook
    head :ok
  end
end
