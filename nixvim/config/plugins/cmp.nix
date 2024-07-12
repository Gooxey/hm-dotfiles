{
    enable = true;
    settings = {
        snippet.expand = ''
            function(args)
                require('luasnip').lsp_expand(args.body)
            end
        '';
        sources = [
            { name = "path"; }
            { name = "nvim_lsp"; keyword_length = 1; }
            { name = "luasnip"; keyword_length = 2; }
            { name = "buffer"; keyword_length = 3; }
        ];
        view.entries = {
            name = "custom";
            selection_order = "near_cursor";
        };
        formatting.fields = [
            "abbr"
            "kind"
        ];
        preselect = "none";
        mapping = {
            "<C-Space>" = "cmp.mapping.complete()";

            "<CR>" = "cmp.mapping.confirm({ select = false })";
            "<Space>" = "cmp.mapping.confirm({ select = false })";

            "<C-u>" = "cmp.mapping.scroll_docs(-4)";
            "<C-d>" = "cmp.mapping.scroll_docs(4)";

            "<C-e>" = "cmp.mapping.abort()";

            # jump to the next placeholder in the snippet
            "<C-f>" = ''
                cmp.mapping(function(fallback)
                    if luasnip.jumpable(1) then
                        luasnip.jump(1)
                    else
                        fallback()
                    end
                end, { 'i', 's' })
            '';

            # jump to the previous placeholder in the snippet
            "<C-b>" = ''
                cmp.mapping(function(fallback)
                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' })
            '';

            # autocomplete with tab
            "<Tab>" = ''
                cmp.mapping(function(fallback)
                    local col = vim.fn.col('.') - 1

                    if cmp.visible() then
                        cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                    elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                        fallback()
                    else
                        cmp.complete()
                    end
                end, { 'i', 's' })
            '';

            # if completion menu is visible, move to previous item
            "<S-Tab>" = ''
                cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
                    else
                        fallback()
                    end
                end, { 'i', 's' })
            '';
        };
    };
}
