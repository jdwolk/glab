#!/usr/bin/env ruby

require 'git'

def gitlab_url(git_url, branch = 'master')
  'http://' +
    git_url.split('@')[1].tr(':', '/').split('.git')[0] +
    '/tree/' + branch
end

g = Git.open(Dir.pwd)
g.index
origin = g.remotes.find { |r| r.name == 'origin' }
url = gitlab_url(origin.url, g.current_branch)

`open "#{url}"`
