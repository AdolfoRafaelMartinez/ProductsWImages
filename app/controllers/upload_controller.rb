class UploadController < ApplicationController
  def index
     render :file => 'app/views/uploads/uploadfile.erb'
  end
  def create
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end
