# encoding: UTF-8

require 'spec_helper'

describe 'users/new.html.erb' do

  before(:each) do
    assign(:user, [stub_model(User)])
  end

  it 'has an email field' do
    expect(render).to have_selector('input', id: 'user_email')
  end

  it 'has a password field' do
    expect(render).to have_selector('input', id: 'user_password')
  end

  it 'has a password confirmation field' do
    expect(render).to have_selector('input', id: 'user_password_confirmation')
  end

end
