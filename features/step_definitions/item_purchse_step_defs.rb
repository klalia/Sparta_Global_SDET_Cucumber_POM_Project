Given("I have succesfully logged into the website") do
  eccomerce_homepage.visit_homepage
  eccomerce_homepage.click_sign_in_link
  eccomerce_sign_in_page.input_user_email_field
  eccomerce_sign_in_page.input_user_password_field
  eccomerce_sign_in_page.click_sign_in_button
end

Given("I have gone to the t-shirts page") do
  eccomerce_account_page.click_tshirt_button
end

Given("I have clicked on the faded short sleeved t-shirt") do
  eccomerce_tshirts_page.click_tshirt_image
end

Given("I have added to cart") do
  eccomerce_product_page.click_add_to_cart_button
end

Given("I have proceeded to checkout") do
  eccomerce_product_page.click_proceed_to_checkout_link
end

Given("I have confirmed the cart") do
  eccomerce_summary_page.click_proceed_to_checkout_button
end

Given("I have confirmed the address details") do
  eccomerce_address_page.click_proceed_to_checkout
end

Given("I have clicked the terms and conditions") do
  eccomerce_shipping_page.click_terms_box
end

Given("I have confirmed the shipping details") do
  eccomerce_shipping_page.click_proceed_to_checkout
end

Given("I have chosen the payment option") do
  eccomerce_payment_page.click_pay_by_bankwire_button
end

When("I have confirmed the order") do
  eccomerce_order_confirmation_page.click_confirm_order_button
end

Then("I get confirmation of the order") do
  expect(eccomerce_order_complete_page.current_url).to eq eccomerce_order_complete_page.order_complete
end
