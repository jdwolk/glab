#!/usr/bin/env ruby

require 'git'

g = Git.open(Dir.pwd)

g.index

origin = g.remotes.find { |r| r.name == 'origin' }

origin_git_url = origin.url

def gitlab_url(git_url, branch = 'master')
  'http://' + git_url.split('@')[1].gsub(':', '/').split('.git')[0] + '/tree/' + branch
end

url = gitlab_url(origin_git_url, g.current_branch)

`open "#{url}"`

