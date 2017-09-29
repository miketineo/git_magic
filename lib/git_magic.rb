require "git_magic/version"

SHA_PATTERN = /\b[0-9a-f]{5,40}\b/

module GitMagic
  def self.commit_progress(sha)
    raise "need to pass a valid commit sha" unless valid_sha?(sha)
    puts "This would tell where commit #{sha} is in a given moment"
  end

  private

  def self.valid_sha?(sha)
    return if sha.empty?
    sha =~ SHA_PATTERN
  end
end
