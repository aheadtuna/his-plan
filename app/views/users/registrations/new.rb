# frozen_string_literal: true

class Views::Users::Registrations::New < Views::Base
  include Phlex::Rails::Helpers::FormFor

  def initialize(minimum_password_length:, f:)
    @minimum_password_length = minimum_password_length
    @f = f
  end

  def view_template
    h2 { "Sign p" }

    div(class: "field") do
      @f.label :email
      br
      @f.email_field :email, autofocus: true, autocomplete: "email"
    end

    div(class: "field") do
      @f.label :password
      if @minimum_password_length
        em { "(#{@minimum_password_length} characters minimum)" }
      end
      br
      @f.password_field :password, autocomplete: "new-password"
    end

    div(class: "field") do
      @f.label :password_confirmation
      br
      @f.password_field :password_confirmation, autocomplete: "new-password"
    end

    div(class: "actions") do
      @f.submit "Sign up"
    end


  end
end
