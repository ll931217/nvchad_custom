return {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.5,
        col = 0.5,
        width = 80,
        height = 50,
        border = "single",
      },
      horizontal = {
        location = "rightbelow",
        split_ratio = .3,
      },
      vertical = {
        location = "rightbelow",
        split_ratio = .5,
      },
    },
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  }
}
