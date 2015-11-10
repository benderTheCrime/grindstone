namespace :grindstone do
  desc "Create Grindstone migrations"
  task :create_migrations do

    # Get the Grindstone dir
    spec = Gem::Specification.find_by_name('grindstone')

    # Set the source and destination
    src_path = "#{spec.gem_dir}/db/migrate/20090106022023_create_posts.rb"
    dest_dir = "#{Rails.root}/db/migrate"
    dest_path = "#{dest_dir}/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_posts.rb"

    # Make sure the destination exists
    FileUtils.mkdir_p dest_dir
    File.new(dest_path, 'w').close

    # Copy the file
    FileUtils::cp src_path, dest_path, :verbose => true
  end
end