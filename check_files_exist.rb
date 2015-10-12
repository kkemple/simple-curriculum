data = YAML.load_file('courses/single.yml')
modules_files_list = Dir["modules/*"]

data['sections'].each do |section|
  puts "Verifying section title: #{section['title']}"
  section['modules'].each do |mod|
    put "  module #{mod}"
    valid = module_files_list.include?("modules/#{mod}.yml")
    puts "#{valid}"
  end
end
