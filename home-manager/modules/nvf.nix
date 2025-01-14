{
  programs.nvf = {
    enable = true;
    settings = {
      config.vim = {
        useSystemClipboard = true;
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        filetree = {
          neo-tree = {
            enable = true;
          };
        };

        notify = {
          nvim-notify.enable = true;
        };

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        comments = {
          comment-nvim.enable = true;
        };

        lsp = {
          formatOnSave = true;
        };

        languages = {
          enableLSP = true;
          enableTreesitter = true;
          enableFormat = true;

          nix.enable = true;
          zig.enable = true;
        };

        keymaps = [
          {
            key = "<esc>";
            mode = "n";
            action = ":noh<CR>";
            silent = true;
            desc = "removes search highlight when pressing esc";
          }
          {
            key = "<leader><leader>";
            mode = "n";
            action = ":Telescope find_files<CR>";
            silent = true;
            desc = "Find files";
          }
          {
            key = "<leader>e";
            mode = "n";
            action = ":Neotree toggle<CR>";
            silent = true;
            desc = "Toggle sidebar";
          }
          {
            key = "<leader>/";
            mode = "n";
            action = "gc";
            silent = true;
            desc = "Toggle comment";
          }
        ];
      };
    };
  };
}
