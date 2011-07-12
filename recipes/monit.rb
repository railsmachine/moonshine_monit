namespace :monit do
  desc "Stop monit"
  task :stop, :roles => :monit do
    sudo "stop monit"
  end

  desc "Start monit"
  task :start, :roles => :monit do
    sudo "start monit"
  end

  desc "Restart monit"
  task :restart, :roles => :monit do
    sudo "stop monit || true"
    sudo "start monit"
  end

  desc "Reload monit config"
  task :reload, :roles => :monit do
    sudo 'monit reload'
  end
end

after 'deploy', 'monit:reload'
