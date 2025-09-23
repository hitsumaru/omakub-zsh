# Omakub Zsh Configs

Este repositório contém minhas configurações Zsh, adaptadas para o Manjaro KDE a partir do projeto Omakub-mj. As configurações incluem o Oh My Zsh, o tema Powerlevel10k e vários plugins para um ambiente de terminal moderno e eficiente.

## Pré-requisitos
* Manjaro KDE

## Instalação

1.  **Instale os pacotes necessários:**
    ```bash
    yay -S zsh zoxide
    ```

2.  **Defina o Zsh como seu shell padrão:**
    ```bash
    chsh -s $(which zsh)
    ```
    (Você precisará reiniciar o terminal para que esta mudança seja efetivada)

3.  **Instale o Oh My Zsh:**
    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

4.  **Instale os plugins e o tema:**
    ```bash
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autocomplete
    
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-history-substring-search.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
    ```


5.  **Clone este repositório e crie o link simbólico:**
    ```bash
    git clone https://github.com/hitsumaru/omakub-zsh.git ~/.config/zsh
    ln -sf ~/.config/zsh/.zshrc ~/.zshrc
    ```
    
6.  **Configure o seu prompt Powerlevel10k:**
    Abra um novo terminal e execute:
    ```bash
    p10k configure
    ```

## Recursos

* **Prompt Moderno:** O Powerlevel10k oferece um prompt elegante e informativo.
* **Autocompletar Inteligente:** Use `zsh-autosuggestions` para prever comandos e `zsh-syntax-highlighting` para destacar a sintaxe em tempo real.
* **Gestão de Secrets:** Mantenha suas variáveis de ambiente e chaves de API em um arquivo separado para maior segurança.
    * Crie o arquivo `~/.config/zsh/secrets`.
    * Defina as permissões de acesso com `chmod 600 secrets`.