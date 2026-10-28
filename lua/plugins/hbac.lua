return {
  "axkirillov/hbac.nvim",
  event = "BufRead",
  opts = {
    threshold = 1,
    autoclose = true,
  },
  config = function(_, opts)
    require("hbac").setup(opts)

    -- Fix: unpin buffer on close so reopening it starts fresh
    vim.api.nvim_create_autocmd("BufDelete", {
      callback = function(args)
        local state = require("hbac.state")
        if state.is_pinned(args.buf) then
          state.set_pin(args.buf, false)
        end
      end,
    })
  end,
}
