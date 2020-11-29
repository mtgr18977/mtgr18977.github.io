---
layout: post
title: Como instalar qualquer distro Linux em um Chromebook
tags:
- Chromebook
- Internet
- Linux
- Traduções
- Tutorial
---

![](https://cdn-images-1.medium.com/max/800/1*Jrk-BeV3AR7KzoRM5gt4Jg.jpeg)Este post é uma tradução do artigo original que pode ser encontrado aqui: 
[Guide To Flash SeaBIOS, Custom Firmware, On Chromebook](https://techvorm.com/guide-flash-seabios-custom-firmware-chromebook/)AVISO: Esse processo apaga toda as informações do disco rígido do seu Chromebook. Uma vez que iremos fazer uma instalação do firmware original, existe uma chance de que algo saia errado, tornando o seu dispositivo inútil. Proceda ciente do risco.Os Chromebooks estão por toda a parte. Os pequenos PC’s baseados em Linux feito pelo Google tem se proliferado desde o seu lançamento, anos atrás, em quase todos os locais; indo desde casas e pequenos negócios até mesmo em escolas para propósitos educacionais. Muitos usuários, especialmente os usuários de Linux, não conseguem deixar de perceber, entretanto, como esses dispositivos são irremediavelmente bloqueados pelo SO do Google, o ChromeOS, no qual o processo de boot poda a possibilidade de se usar uma série de aplicações e o torna dependente de uma conexão com a internet para que qualquer operação seja realizada.Então, o que faz um usuário de Linux acreditar no potencial de um laptop Linux tão capado?Acabar com tudo o que o Google fez.Em muitos casos os Chromebooks são suportados pelo projeto
[FOSS Coreboot](https://doc.coreboot.org/), o que significa que existe uma maneira completamente desbloqueada, livre e aberta do código fonte da BIOS dos Chromebooks que está apenas esperando para ser instalada. Com alguns poucos passos relativamente simples esse laptop de US$300 pode se tornar uma máquina totalmente livre e pronta para receber qualquer distribuição Linux. Devemos notar, no entanto, que é preciso checar qual tipo de processador do seu Chromebook está rodando, um vez que este método suporta Chromebooks com processadores Intel. Outro ponto que devemos levar em conta antes de iniciar é que existe uma tonelada de Chromebooks diferentes. Este método foi testado com o modelo mais comum, um Acer da série 7XX, mas deve funcionar, talvez com algumas pequenas diferenças, em outros modelos de Chromebooks.###Tenha certeza de que irá funcionar!
Antes de fazer qualquer coisa, certifique-se que este tutorial irá funcionar no seu Chromebook. Afinal, não vai ser nada legal descobrir no meio desse processo que o seu aparelho não é suportado. O programador que trabalha para deixar estas ROM’s funcionando de maneira satisfatória e os scripts rodando de maneira lisa tem feito um ótimo trabalho mantendo uma tabela no seu website dos modelos que o método suporta.Antes de fazer qualquer coisa, então, vá até 
[https://johnlewis.ie/custom-chromebook-firmware/rom-download](https://johnlewis.ie/custom-chromebook-firmware/rom-download)e certifique-se de que o seu modelo é suportado.O objetivo do projeto é ter um suporte completo a ROM, contudo, o processo ‘BOOT_STUB’ não deve estar funcionando de modo ideal ainda, e por isso mesmo não é recomendado.###Configurando o seu Chromebook
###Modo de Desenvolvedor
O primeiro passo para configurar o seu aparelho para poder voar sem amarras com uma nova distro Linux é colocá-lo em modo de desenvolvedor. Na maioria dos Chromebooks isto pode ser feito segurando a tecla 
**ESC**
e 
**ATUALIZAR**
 e então pressionando o botão de LIGAR. Isso irá reiniciar o seu computador em modo de recuperação. Uma mensagem será mostrada dizendo que o que ChromeOS está faltando ou com problemas. Não está. Esta é apenas uma mensagem padrão de recuperação. Pressione 
**CTRL+D**
 nessa tela. Então o Chromebook irá lhe informar que o processo de verificação do SO está desligado. E isso é algo bom quando você pretende instalar um sistema operacional que não é oficialmente suportado, então apenas pressione 
**ENTER**
e deixe o aparelho reiniciar. Quando estiver pronto ele irá mostrar uma mensagem dizendo que o processo de verificação está de fato desativado. Pressione 
**CTRL+D**
 novamente. O Chromebook agora irá levar alguns minutos para limpar o seu disco rígido e reiniciar novamente. Finalmente estamos no modo de desenvolvedor. Alguns modelos mais antigos tem uma trava física para o modo de desenvolvedor. Neste caso apenas gire a trava e reinicie. Sim, é assim simples nos modelos antigos.Ainda temos um segundo passo para saber se você tem acesso completo ao modo de desenvolvedor. Uma vez que o seu aparelho tenha reiniciado no ChromeOS novamente, pressione 
**CTRL+ALT+F2**
 para liberar a linha de comando. Se você receber uma mensagem de que o processo de verificação do sistema operacional está desligado, ignore. Ele fará isso até que tenhamos instalado a nova BIOS e o disco rígido esteja devidamente formatado. Apenas espere por mais ou menos 30 segundos ou pressione 
**CTRL+D**
 para ignorar a mensagem. A partir da linha de comando logue-se.chronosO prompt irá pedir uma senha.Digite então:sudo bashSeguido por:chromeos-firmwareupdate –mode=todevE, depois:$ chronos$ sudo bash# chromeos-firmwareupdate –mode=todevIsso irá os assegurar que todas as características do modo de desenvolvedor estarão disponíveis:Uma vez que o comando termine de rodar, reinicie mais uma vez (caso o Chromebook não faça isso automaticamente).###Instalando a nova BIOS
Quando o Chromebook tiver terminar o processo de reinicialização, libere mais uma vez a linha de comando pressionando 
**CTRL+ALT+F2**
. Logue-se e entre novamente no Bash.$ chronos$ sudo bashAgora é a hora de instalar a nova BIOS. Ainda bem que temos uma maneira muito fácil e conveniente de fazer isso através de um script que pode ser baixado e instalado automaticamente. Se por alguma razão, contudo, você quiser fazer o processo manualmente, este pode ser feito, mas o processo manual não será objeto deste tutorial. Quando você estiver pronto, digite o seguinte na linha de comando:$ cd; rm -f flash_chromebook_rom.sh$ curl -O 
[https://johnlewis.ie/flash_chromebook_rom.sh](https://johnlewis.ie/flash_chromebook_rom.sh)$ sudo -E bash flash_chromebook_rom.shEste script irá perguntar o que você quer fazer. A melhor opção no momento é a opção 5, Instalar ROM completa. Claro, você pode optar por qualquer uma das outras opções se você sabe o que está fazendo. Dependendo do seu modelo de Chromebook o script poderá pedir mais informações. Responda de acordo com as informações da tabela de referência do site do programador. Quando o script terminar a sua execução tudo deverá está pronto para a sua nova distro Linux.###Instalando uma distro Linux
Desligue o Chromebook para poder instalar uma distro Linux. Pegue um CD de instalação ou um drive USB e plugue no Chromebook. Ligue o Chromebook e quando a tela 
[SealBIOS](https://www.coreboot.org/SeaBIOS)aparecer pressione 
**ESC**
. Isso deve mostrar o menu de boot. Selecione o seu meio de instalação e inicie. Se você não encontrar o seu método, tente reiniciar na seção de Payload. Deixe o computador iniciar e, reinicie imediatamente a partir da linha de comando para tentar acessar o menu de boot novamente com a tecla 
**ESC**
.Uma vez que o Chromebook inicie pelo seu meio de instalação, você deverá ser capaz de instalar qualquer distro Linux e maneira normal como em qualquer outro computador. Claro, é uma boa ideia pegar uma distro Linux que seja recente e que tenha compatibilidade com os recursos dos aparelhos do Google, ou mesmo que já seja preparada para uma compilação de kernel personalizada. Sinta-se a vontade para limpar o seu HDD inteiro no processo de instalação, apenas certifique-se de ter uma partição de boot com a BIOS no seu drive se você pretende usar o 
[GPT](https://pt.wikipedia.org/wiki/Tabela_de_Parti%C3%A7%C3%A3o_GUID). Contudo, a maioria dos instaladores lida com isso para você. Uma vez terminada a instalação você terá em mãos um computador completamente funciona e sem amarras do Google.
