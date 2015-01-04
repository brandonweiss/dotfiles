class Dotfiles < Thor

  include Thor::Actions
  Thor::Sandbox::Dotfiles.source_root(File.expand_path("../", __FILE__))

  EXCLUDED_FILES = %w{ atom bin extras fish Gemfile Gemfile.lock Thorfile vendor }

  @user = %x[whoami].chomp

  desc "install", "Install all dotfiles into #{@user}'s home directory"
  method_options :force => :boolean
  def install
    Dir["*"].each do |file|
      next if EXCLUDED_FILES.include?(file)

      link_file(file, "~#{@user}/.#{file}", options[:force])
    end

    link_file("#{Dir.pwd}/atom/config.cson", "~#{@user}/.atom/config.cson", options[:force])
    link_file("#{Dir.pwd}/atom/keymap.cson", "~#{@user}/.atom/keymap.cson", options[:force])
    link_file("#{Dir.pwd}/atom/styles.less", "~#{@user}/.atom/styles.less", options[:force])

    link_file("#{Dir.pwd}/bin/zipclean.sh", "/usr/local/bin/zipclean", options[:force])

    link_file("#{Dir.pwd}/fish/config.fish", "~#{@user}/.config/fish/config.fish", options[:force])
    link_file("#{Dir.pwd}/fish/functions",   "~#{@user}/.config/fish/functions",   options[:force])
  end

end
