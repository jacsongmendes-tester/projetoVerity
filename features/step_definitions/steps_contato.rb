Given("que eu acessei a home page da Verity") do
    @Pages.acessarHomePage
end

When("eu clicar na opção de menu {string}") do |page|
    if page == "Contato"
        @Pages.acessarPageContato
        else
        @Pages.acessarHomePage
    end
end

And("preencher os campos Nome Completo, Empresa, Email, Fone e Mensagem") do |param|
    args = param.hashes.first
    @Pages.preencherFormularioContato(args["Nome"],args["Empresa"],args["Email"],args["Fone"],args["Mensagem"])
end

And("clicar no botão Enviar") do   
    @Pages.ciclarBotaoEnviar
end

Then ("o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso.") do   
    @Pages.validarMensagem
end