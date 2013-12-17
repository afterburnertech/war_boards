require "war_engine/constraints/subdomain_required"

WarBoards::Application.routes.draw do

  # We only want the forums routes to be accessible when
  # the application is being accessed through a subdomain, 
  # as these features should only be accessible for particular 
  # accounts.
  constraints(WarEngine::Constraints::SubdomainRequired) do
    mount Forem::Engine, :at => "/"
  end

  mount WarEngine::Engine, :at => "/"
end
