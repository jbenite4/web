class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :soap_service

  def soap_service
      @client = Savon::Client.new do
        wsdl.document = "http://james-vpccw12fl:8080/Oe/Cal?wsdl"
      end
    end

end
