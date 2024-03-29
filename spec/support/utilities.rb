include ApplicationHelper

def sign_in(user)
	visit signin_path
	fill_in "Email", with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
	#populate cookie when not using capybara
	cookies[:remember_token] = user.remember_token
end