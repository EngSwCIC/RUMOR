![Rumor Logo](app/assets/images/rumor-logo.png)

O RUMOR é um aplicativo que se propõe a aproximar e conectar usuários do RU da Universidade de Brasília.

Acreditamos em uma universidade mais engajada e conectada, em que os próprios alunos colocam a mão na massa para impactar o próprio meio e melhorá-la.

Olá, professora! 

Você pediu para que eu melhorasse os testes e a documentação dessa sprint. Eu achei mais organizado fazer uma branch completamente nova minha, para facilitar a avaliação. 

O que eu fiz nessa sprint (antes da apresentação): refatoração do cucumber e implementação do rspec (não feita na sprint 2), além da aplicação das métricas. Tentativa de merge da dan_develop com a develop_grupo_5 (por isso que essa branch tem implementações que não foram minhas).

Features responsáveis por mim: Visualizar Localização e Compartilhar Cardápio
  Professora, por favor, considere que a escolha dessas features não foi proposital. Quando eu selecionei essas duas features, elas ainda estavam em sua versão original de API, e eu achei que seria divertido mexer com as APIs do Google Maps e do Facebook. Quando eu fui pesquisar como implementar as APIs, percei que seria extremamente complicado e mudei de ideia (para implementar as APIs, você precisa de autorização das empresas, e elas podem demorar bastante). Eu acabei adaptando a ideia das features originais. O meu erro foi não ter deixado isso claro nos cenários, o que foi corrigido nessa branch. Se quiser, pode ver os .features e os steps do cucumber.  

  Elas podem parecer simples de fazer. Quanto a isso, devo dizer que passei tanta dificuldade fazendo essas features quanto as outras pessoas. Tive que usar JavaScript para manipular o ClipBoard do computador, e isso não foi fácil. Mais uma vez, peço que considere que eu impletementei assim porque foi o que fez mais sentido para mim em relação às features que eu escolhi.
  
O que eu fiz nessa sprint(após a apresentação - nessa branch): 
 - Refatoração do Cucumber (.feature + steps -> compartilhar_cardapio.feature e visualizar_localizacao.feature + compartilhar_cardapio_steps.feature e visualizar_localizacao_steps.feature). Nessa refatoração, eu tentei especificar e clarear ao máximo o que eu estava testando e o que as minhas features faziam. Cálculo das métricas e o Rdoc.
 
 PS.: Sobre as métricas e a Documentação. Você vai notar que a documentação e as métricas estão "estranhas" quanto às minhas features. Eu acredito que isso aconteca porque não há DEFS nos meus arquivos. Tanto é que se você abrir a documentação e as métricas, vão aparecer, por exemplo, os arquivos RATING.RB e RU.RB, arquivos que possuem essas definições. Eu não precisei usar nenhuma definição ou model nas minhas features. Se isso te incomoda, eu estou disposto a implementar algo que apareça nessas métricas. Se por algum motivo eu fiz algo de errado que impede que meus arquivos sejam computados pelo Rdoc, Saikuro e Flog, me avise por favor! Estou disposto a fazer o que for necessário para ser aprovado!
 
 PS.: Mais informações sobre os últimos commits na Wiki Usuário Extra
