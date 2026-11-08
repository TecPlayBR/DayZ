# TECZ | Steam Workshop Assets

Biblioteca pública de artes do projeto TECZ para uso nas descrições de itens da Steam Workshop e, futuramente, no website.

## Padrão visual

- A identidade oficial do TECZ é fixa. Não redesenhar a logo para cada pacote.
- Todos os modpacks usam a **mesma capa TECZ MODPACK**.
- As diferenças entre pacotes ficam no título, na descrição, nos créditos e nas capturas reais de gameplay.
- Comunicação pública em inglês, sem identificação regional.
- Visual pós-apocalíptico, com TEC em metal claro desgastado e Z vermelho.
- Incluir somente imagens de autoria própria ou com autorização de uso.

## Estrutura planejada

```text
TECZ/SteamWorkshop/
├── README.md
├── Steam-BBCode-Template.md
└── assets/
    ├── README.md
    ├── tecz-modpack-cover.png
    ├── header-about.png
    ├── header-content.png
    ├── header-installation.png
    └── header-credits.png
```

**Os nomes de imagem acima são planejados. Arquivos de imagem só devem ser considerados publicados após o upload e a verificação do URL.**

## Publicação

1. Adicionar as artes finais em `assets/`. Manter os nomes estáveis para não quebrar as descrições.
2. Abrir a imagem publicada no GitHub e copiar o endereço direto, terminado em `.png` ou `.gif`, ou usar o link raw na branch `main`.
3. Testar se a imagem abre diretamente no navegador e aparece na descrição real da Steam. O suporte a hosts externos pode variar.
4. Inserir na descrição da Steam com `[img]URL_DIRETA[/img]`.
5. Enviar as imagens reais de gameplay para a galeria da Steam Workshop, não confundir com os banners do corpo da descrição.
6. Não publicar arquivos PBO, código comercial, licenças, credenciais ou conteúdos de terceiros sem permissão.

## Modelo

Consulte [Steam-BBCode-Template.md](Steam-BBCode-Template.md). Os links de imagem no modelo são ilustrativos até a publicação dos arquivos.

## Repositório

[Retornar ao repositório DayZ](../../README.md).
