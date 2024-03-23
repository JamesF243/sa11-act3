def extract_urls(text)
  pattern = /(?:https?|ftp):\/\/[\w\-]+(?:\.[\w\-]+)+(?:[\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?/x
  # had issues getting /x free space mode to work so doing this instead
  # (?:https?|ftp) - This detects if there is http, https, or ftp in front
  # :\/\/ - checks if it's followed by ://
  # [\w\-]+ - allows www
  # Rest is mostly special character checks, and char checks for both the main url and addons
  text.scan(pattern).each { |url| puts url }
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
