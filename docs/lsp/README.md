# LSP 

> LSP stands for Language Server Protocol which was created by Microsoft and now is supported my many companies such as RedHat etc.

## Why?

Before the introduction of LSP every code editor developed had to reinvent the whole wheel in order to provide language specific features such as code completion, diagnostics, actions, hover tooltips, go to definitions etc.

For example, if we are using Atom then we need to develop seperate plugin for Atom and so for every code editor or IDE, there are different implementations for the same problem.

LSP tries to solve this problem by just having a server handle all the above code related features and just let the editor communicate with that language server to display code related actions, diagnostics, hover tooltips, code actions and so on.

## Support for Neovim

In case of Neovim from version 0.5 and on, we have builtin LSP support and many languages have developed LSP implementations for the same. 
We just need to configure Neovim in order to enjoy the fruits of LSP.

> In the next sections of LSP, there will be basic information for how to configure LSP for different languages from scratch. It will help us to have great code editing experience in Neovim.


























