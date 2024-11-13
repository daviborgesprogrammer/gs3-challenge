![image](assets/readme/logo_gs3.png)
# Desafio GS3 Tecnologia (Flutter)

<u>**Tecnologias obrigatórias**</u>
- [x] Flutter

<u>**Requisitos**</u>
- [ ] Reproduzir a tela do protótipo do [Figma](https://www.figma.com/design/6zpyt0P3vGB4pey9LxYUXO/DESAFIO?node-id=0-54&node-type=frame&t=jrIohrpbsJIvnnc0-0), de maneira funcional, ou seja, implementando todo o
fluxo de consulta dos dados que serão exibidos na tela.
- [ ] Deve-se reproduzir em detalhes as cores, dimensões e margens do protótipo.
- [ ] Simular os retornos das requisições através de mocks.
- [ ] Fazer separações das responsabilidades (regra de negócios e visualização)
- [ ] A lista horizontal que contém as contas funciona como um componente de seleção, ou seja, é
um carrossel que ao passar para o lado é selecionado outra conta. Então não deve funcionar
apenas como um scroll horizontal, onde seria possível mover o scroll sem deixar um item
específico selecionado.
- [ ] A lista de lançamentos é referente a conta que foi selecionada. Ou seja, ao mover o carrossel e
selecionar uma nova conta, a lista de lançamentos é atualizada para exibir os lançamentos
referentes a conta que foi selecionada.
- [ ] Não deve-se consultar os lançamentos de todas as contas ao inicializar o aplicativo, apenas da
primeira conta. Os dados das demais contas devem ser consultados ao mover o carrossel e
selecionar uma nova conta, e ao voltar para uma conta que já havia sido selecionada, não é
necessário carregar novamente os seus dados, ou seja, deve-se manter em cache.
- [ ] Utilizar ValueNotifier para a gerência de estado.

<p>Na avaliação será verificada a capacidade do layout se ajustar em diferentes proporções de
telas.</p>
<p>Focar na tela representada no Figma, não é necessário implementar componentes/telas
adicionais, como o menu Drawer, ação ao clicar no botão de notificações, etc.</p>
<p>Será avaliado o código e o aplicativo rodando, favor enviar o repositório github/gitlab que
contém o código fonte do desafio.</p>
<p>Prazo para fazer o desafio: 1 semana.</p>