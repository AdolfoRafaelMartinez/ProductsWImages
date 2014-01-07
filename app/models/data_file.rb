class DataFile < ActiveRecord::Base 
  ct = "a"+Time.now.to_i.to_s
  def before_save
    self.name = "a"+Time.now.to_i.to_s 
  end
  def self.save(upload) 
    path = "public/photos" 
    name = upload['datafile'].original_filename 
    # name = "a"+Time.now.to_i.to_s 
    pathNamef = File.join(path+"/f", name) 
    pathNamet = File.join(path+"/t", name) 
    File.open(pathNamef, "wb") { |f| f.write(upload['datafile'].read) }
    `convert #{pathNamef} -resize 100x100 -quality 90 #{pathNamet}`  
  end 
end 
