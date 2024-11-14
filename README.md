# Criação de Ambiente para Ubuntu em Vagrant e Shell

Este repositório define o processo de criação automatizada de um ambiente de desenvolvimento usando Vagrant, provisionado com o Shell.

O Ambiente a ser provido é uma máquina com *Ubuntu 22.04 LTS*, com *8 GB de RAM*, e *8 Núcleos* com uso de até *70% de disco*.

### Alguns pacotes e ferramentas estão listados abaixo:

1. Git;
2. XClip;
3. SDKMan;
4. JDK 1.8;
5. Maven;
6. Gradle;
7. Tilix;
8. ZSH Terminal;
9. Docker CE;

### Pacotes instalados como requisitos do Docker CE:

10. apt-transport-https;
11. ca-certificates;
12. curl;
13. gnupg-agent;
14. software-properties-common.

## Requerimentos para o processo:

1. Clonar este repositório: [https://github.com/marcosnasp/vagrant-ubuntu-bionic64] (https://github.com/marcosnasp/vagrant-ubuntu-bionic64)
2. Clonar o repositório localizado em no mesmo nível desse projeto: [https://github.com/marcosnasp/vagrant-ubuntu-bionic64](https://github.com/marcosnasp/vagrant-ubuntu-bionic64)
3. Executar esses comandos no diretório raiz do repositório clonado em (1):

```console
foo@bar: vagrant up
```
