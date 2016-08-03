EXCLUDED_FILES = %w[atom bin extras fish Rakefile vendor]

task :install do
  home = ENV["HOME"]

  Dir["*"].each do |file|
    next if EXCLUDED_FILES.include?(file)

    ln_s "#{Dir.pwd}/#{file}", "#{home}/.#{file}", force: true
  end

  ln_s "#{Dir.pwd}/atom/config.cson", "#{home}/.atom/config.cson", force: true
  ln_s "#{Dir.pwd}/atom/keymap.cson", "#{home}/.atom/keymap.cson", force: true
  ln_s "#{Dir.pwd}/atom/styles.less", "#{home}/.atom/styles.less", force: true

  ln_s "#{Dir.pwd}/fish/config.fish", "#{home}/.config/fish/config.fish", force: true
  ln_s "#{Dir.pwd}/fish/functions",   "#{home}/.config/fish/functions", force: true

  `npm install -g diff-so-fancy`
  `source "$HOME/.extras/osx_settings"`
end

task default: :install