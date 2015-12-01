require_relative '../config/environments/init'

# require 'SecureRandom'

full_data = []

File.open("db/data/urls","r").each do |line|
    
    data = line.chomp.split(',')
    a = nil
    b = nil
    data.each do |x|
        a = x.gsub("(","")
        b = a.gsub(")","")
        full_data << b
    end    
end    

    Url.transaction do
        full_data.each do |x|
            c = SecureRandom.hex(6)
              Url.connection.execute "INSERT INTO urls (long_url, short_url, created_at, updated_at) VALUES ('#{x}','#{c}','#{Time.now}','#{Time.now}')"
      end
     end
