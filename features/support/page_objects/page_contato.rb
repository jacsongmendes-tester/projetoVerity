class Pages
    include Capybara::DSL
    def acessarHomePage
        visit 'https://www.verity.com.br'
    end

    def acessarPageContato
        find(ModuleElements::ElementsPage.elementPageContato).click
    end

    def preencherFormularioContato(nome,empresa,email,telefone,texto)
        find(ModuleElements::ElementsPage.elementNome).set nome
        find(ModuleElements::ElementsPage.elementEmpresa).set empresa
        find(ModuleElements::ElementsPage.elementEmail).set email
        find(ModuleElements::ElementsPage.elementTelefone).set telefone
        find(ModuleElements::ElementsPage.elementTexto).set texto
    end

    def ciclarBotaoEnviar
        find(ModuleElements::ElementsPage.botaoEnviar).click
    end

    def validarMensagem
        msgSucesso = find(ModuleElements::ElementsPage.elementMensagemSucesso).text
        puts msgSucesso 
        if msgSucesso.include?("Mensagem enviada com sucesso!")
            puts "\n\n*-------- Mensagem envida com Sucesso -----------*\n\n"
        end     
    end
    
end
