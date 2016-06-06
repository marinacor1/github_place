class Repo
  attr_reader :service

  def initialize(user)
    @service ||= GithubService.new(user)
  end

  def all
    repo_array = service.repo_hash
  end

end
