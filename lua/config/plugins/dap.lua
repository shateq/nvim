return {
  {
    "mfussenegger/nvim-dap",
    version = "*",
    lazy = true,
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-telescope/telescope-dap.nvim"
      -- "igorlfs/nvim-dap-view",
      -- { "<leader>dt", "<cmd>DapViewToggle<cr>" },
      -- { "<leader>dw", "<cmd>DapViewWatch<cr>" },
    },
    keys = {
      { "<leader>db", "<cmd>DapToggleBreakpoint<cr>" },
      { "<F1>",       "<cmd>DapContinue<cr>" },
      { "<F2>",       "<cmd>DapStepInto<cr>" },
      { "<F3>",       "<cmd>DapStepOver<cr>" },
      { "<F4>",       "<cmd>DapStepOut<cr>" },
      { "<F5>",       "<cmd>DapPause<cr>" },
      -- { "<F5>",       "<cmd>dap.step_back<cr>" },
      { "<F12>",      "<cmd>DapRestartFrame<cr>" },
      { "<leader>dc", "<cmd>Telescope dap configurations<cr>" },
      { "<leader>dl", "<cmd>Telescope dap list_breakpoints<cr>" },
    },
    config = function()
      local dap = require("dap")

      require("telescope").load_extension("dap")

      -- if vim.fn.executable("gdb") == 1 then
      --   require("config.dap.c")
      -- end

      dap.adapters.gdb = {
        type = "executable",
        command = "gdb",
        args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
      }

      dap.configurations.c = {
        {
          name = "Launch GDB process",
          type = "gdb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
        },
        {
          name = "Select and attach to process",
          type = "gdb",
          request = "attach",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          pid = function()
            local name = vim.fn.input("Executable name (filter): ")
            return require("dap.utils").pick_process({ filter = name })
          end,
          cwd = "${workspaceFolder}"
        },
      }
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = true,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    keys = {
      { "<leader>dt", function() require("dapui").toggle() end },
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      ---@diagnostic disable: missing-fields
      dapui.setup({
        layouts = {
          {
            elements = { {
              id = "scopes",
              size = 0.25
            }, {
              id = "breakpoints",
              size = 0.25
            }, {
              id = "stacks",
              size = 0.25
            }, {
              id = "watches",
              size = 0.25
            } },
            position = "right",
            size = 40
          },
          {
            elements = { {
              id = "repl",
              size = 0.5
            }, {
              id = "console",
              size = 0.5
            } },
            position = "bottom",
            size = 10
          }
        },
      })

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
}
