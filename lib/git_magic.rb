require "git_magic/version"

module GitMagic
  def commit_progress(sha)
    puts "This would tell where commit #{sha} is in a given moment"
  end
end
