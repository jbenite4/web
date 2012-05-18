class OelosController < ApplicationController
  def index


  end
  def new
    @numero1=params[:numero1]
    @numero2=params[:numero2]
    operacion = params[:operacion]


    if operacion.eql?"+"
      client = soap_service
      respuesta = client.request :web, :sumar, :body => {"arg0 "=> "#{@numero1}", "arg1"=> "#{@numero2}"}
      if respuesta.success?
        r = respuesta.to_array(:sumar_response).first
        @respuesta = r[:return]
      end
    elsif operacion.eql?"-"
      @respuesta = @numero1-@numero2
    elsif operacion.eql?"*"
      @respuesta = @numero1*@numero2
    elsif operacion.eql?"/"
      @respuesta = @numero1/@numero2
    end


  end
end
