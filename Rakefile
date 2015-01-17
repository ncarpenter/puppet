SSH = 'ssh -A -i "C:\Users\3180832\Documents\AWS-Puppet (1).pem" -l ubuntu'

desc "Run Puppet on ENV['CLIENT']"
task :apply do
client = ENV['CLIENT']
sh "git push"
sh "#{SSH}	#{client}	pull-updates"
end