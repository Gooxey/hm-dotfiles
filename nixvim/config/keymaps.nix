[
  # open neagit
  {
    key = "<leader>G";
    action = "<cmd>Neogit<CR>";
  }
  # open oil
  {
    key = "<leader>pv";
    action = "<cmd>Oil --float<CR>";
  }
  # open terminal
  {
    key = "<leader>t";
    action = "<cmd>ToggleTerm<CR>";
  }

  # exit terminal mode
  {
    mode = "t";
    key = "<esc>";
    action = "<C-\\><C-n>";
  }

  # pane switching
  {
    key = "<leader>h";
    action = "<C-w><C-h>";
  }
  {
    key = "<leader>j";
    action = "<C-w><C-j>";
  }
  {
    key = "<leader>k";
    action = "<C-w><C-k>";
  }
  {
    key = "<leader>l";
    action = "<C-w><C-l>";
  }

  # pane existence
  {
    key = "<leader>s";
    action = "<cmd>split<CR>";
  }
  {
    key = "<leader>v";
    action = "<cmd>vsplit<CR>";
  }
  {
    key = "<leader>q";
    action = "<cmd>q<CR>";
  }
  
  # umlaute
  {
    key = "<C-e>a";
    action = "ä";
    mode = "i";
  }
  {
    key = "<C-e>A";
    action = "Ä";
    mode = "i";
  }
  {
    key = "<C-e>o";
    action = "ö";
    mode = "i";
  }
  {
    key = "<C-e>O";
    action = "Ö";
    mode = "i";
  }
  {
    key = "<C-e>u";
    action = "ü";
    mode = "i";
  }
  {
    key = "<C-e>U";
    action = "Ü";
    mode = "i";
  }
  {
    key = "<C-e>s";
    action = "ß";
    mode = "i";
  }
]
