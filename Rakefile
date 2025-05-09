require "rubygems"
require "tmpdir"
require "bundler/setup"
require "jekyll"
require 'rake'
require 'json'
require 'front_matter_parser'
require 'open3'

desc "Create corpus for search"
file './corpus.json' => ['./', *Rake::FileList['_posts/*.md'].exclude()] do |md_file|
     unsafe_loader = ->(string) { YAML.load(string) } #required by front matter parser. Read more at the githu brepo
     corpus = md_file.sources.grep(/\.md$/)
     .map do |path|
        file_path = './' + path
        parsed = FrontMatterParser::Parser.parse_file(file_path, loader: unsafe_loader)
         {
            id: path.pathmap('%n'),
            name: parsed['title'],
            url: parsed['title'].downcase.strip.gsub(' ', '-'),
            content: parsed.content,
         }
     end
     File.open(md_file.name, 'w') do |f|
        f << JSON.generate(corpus)
     end
end

file './search_index.json' => ['./corpus.json'] do |t|
  Open3.popen2('node script/build-index') do |stdin, stdout, wt|
     IO.copy_stream(t.source, stdin)
     stdin.close
     IO.copy_stream(stdout, t.name)
  end
end

task :default => ['./corpus.json', './search_index.json']