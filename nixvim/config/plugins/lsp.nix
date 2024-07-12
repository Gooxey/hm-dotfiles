{
    enable = true;
    
    inlayHints = true;

    servers = {
        nixd.enable = true;
        zls.enable = true;
    };

    keymaps.lspBuf = {
        "gD" = "declaration";
        "gd" = "definition";
        "gr" = "references";
        "gs" = "signature_help";
        "K" = "hover";
        "<space>rn" = "rename";
        "<space>a" = "code_action";
    };
}
