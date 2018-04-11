defmodule Issues.GitHubIssues do

  @user_agent [ {"User-agent", "Elixir simon@simonwolf.io"} ]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end


end
