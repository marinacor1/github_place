class Repo
  attr_reader :githubber

  def initialize(user)
    @githubber ||= GithubService.new(user)
  end

  def all
    repo_array = githubber.repo_hash
    repo_array.map do |repo|
      {name: repo[:name], link: repo[:html_url]}
    end
  end

end
