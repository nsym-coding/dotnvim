-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nsym_coding/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nsym_coding/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nsym_coding/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nsym_coding/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nsym_coding/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Abstract-cs"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/Abstract-cs",
    url = "https://github.com/Abstract-IDE/Abstract-cs"
  },
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ReplaceWithRegister = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister",
    url = "https://github.com/vim-scripts/ReplaceWithRegister"
  },
  ["abstract.vim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/abstract.vim",
    url = "https://github.com/jdsimcoe/abstract.vim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["citruszest.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/citruszest.nvim",
    url = "https://github.com/zootedb0t/citruszest.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  falcon = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/falcon",
    url = "https://github.com/fenetikm/falcon"
  },
  ["fluoromachine.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/fluoromachine.nvim",
    url = "https://github.com/maxmx03/fluoromachine.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["happy_hacking.vim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/happy_hacking.vim",
    url = "https://github.com/yorickpeterse/happy_hacking.vim"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["jellybeans.vim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/jellybeans.vim",
    url = "https://github.com/nanotech/jellybeans.vim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  meta5 = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/meta5",
    url = "https://github.com/christophermca/meta5"
  },
  minimalist = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/minimalist",
    url = "https://github.com/dikiaap/minimalist"
  },
  molokayo = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/molokayo",
    url = "https://github.com/fmoralesc/molokayo"
  },
  neon = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/neon",
    url = "https://github.com/rafamadriz/neon"
  },
  neovim = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/edeneast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["one-nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/one-nvim",
    url = "https://github.com/Th3Whit3Wolf/one-nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  spacecamp = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/spacecamp",
    url = "https://github.com/jaredgorski/spacecamp"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/embark-theme/vim"
  },
  ["vim-256noir"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-256noir",
    url = "https://github.com/andreasvc/vim-256noir"
  },
  ["vim-afterglow"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-afterglow",
    url = "https://github.com/danilo-augusto/vim-afterglow"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-colors-lucid"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-colors-lucid",
    url = "https://github.com/cseelus/vim-colors-lucid"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-deus"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-deus",
    url = "https://github.com/ajmwagar/vim-deus"
  },
  ["vim-gotham"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-gotham",
    url = "https://github.com/whatyouhide/vim-gotham"
  },
  ["vim-hybrid-material"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-hybrid-material",
    url = "https://github.com/kristijanhusak/vim-hybrid-material"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-vice"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vim-vice",
    url = "https://github.com/bcicen/vim-vice"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/mofiqul/vscode.nvim"
  },
  ["wombat256.vim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/wombat256.vim",
    url = "https://github.com/vim-scripts/wombat256.vim"
  },
  ["zenbones.nvim"] = {
    loaded = true,
    path = "/home/nsym_coding/.local/share/nvim/site/pack/packer/start/zenbones.nvim",
    url = "https://github.com/mcchrish/zenbones.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
