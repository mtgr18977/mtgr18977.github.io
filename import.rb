# coding: utf-8

require 'hpricot'
require 'fileutils'
require 'safe_yaml'
require 'html2markdown'

module JekyllImport
  # This importer takes a *.xml file, which can be exported from your
  # wordpress.com blog (/wp-admin/export.php).
  module WordpressDotCom
    def self.process(filename = {:source => ARGV[0]})
      import_count = Hash.new(0)
      doc = Hpricot::XML(File.read(filename[:source]))

      (doc/:channel/:item).each do |item|
        title = item.at(:title).inner_text.strip
        permalink_title = item.at('wp:post_name').inner_text.gsub("/","-")
        # Fallback to "prettified" title if post_name is empty (can happen)
        if permalink_title == ""
          permalink_title = sluggify(title)
        end

        if item.at('wp:post_date')
          begin
            date = Time.parse(item.at('wp:post_date').inner_text)
          rescue
            date = Time.now
          end
        else
          date = Time.now
        end

        name = "#{date.strftime('%Y-%m-%d')}-#{permalink_title}.md"
        type = item.at('wp:post_type').inner_text
        tags = item.search('category[@domain="post_tag"]').map{|t| t.inner_text}.uniq

        header = {
          'layout' => type,
          'title' => title,
          'tags' => tags
        }

        begin
          FileUtils.mkdir_p "_#{type}s"
          filename = "_#{type}s/#{name}"
          File.open(filename, "w") do |f|
            f.puts header.to_yaml
            f.puts '---'
            f.puts item.at('content:encoded').inner_text
          end
          p = HTMLPage.new(contents: File.read(filename))
          File.open(filename, "w") { |f| f.puts p.markdown }
        rescue => e
          puts "Couldn't import post!"
          puts "Title: #{title}"
          puts "Name/Slug: #{name}\n"
          puts "Error: #{e.message}"
          next
        end

        import_count[type] += 1
      end

      import_count.each do |key, value|
        puts "Imported #{value} #{key}s"
      end
    end

    def self.sluggify(title)
      title.gsub(/[^[:alnum:]]+/, '-').downcase
    end
  end
end

JekyllImport::WordpressDotCom.process