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
local package_path_str = "/home/bliss/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/bliss/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/bliss/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/bliss/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bliss/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["multicursor.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6k\14addCursor)\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6j\14addCursor)\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6*\14addCursor*\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6*\15skipCursore\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\1\0B\0\1\1X\0\3€-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0À\14addCursor\19disableCursors\19cursorsEnabledŠ\1\0\0\2\1\4\0\19-\0\0\0009\0\0\0B\0\1\2\14\0\0\0X\0\4€-\0\0\0009\0\1\0B\0\1\1X\0\t€-\0\0\0009\0\2\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\3\0B\0\1\1X\0\0€K\0\1\0\0À\17clearCursors\15hasCursors\18enableCursors\19cursorsEnabled.\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\0À\21transposeCursors.\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ÿÿB\0\2\1K\0\1\0\0À\21transposeCursorsï\b\1\0\6\0<\0š\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0'\4\a\0003\5\b\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\t\0'\4\n\0003\5\v\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\f\0'\4\r\0003\5\14\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\15\0'\4\16\0003\5\17\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\18\0'\4\19\0009\5\20\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\21\0'\4\22\0009\5\23\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\24\0'\4\25\0009\5\26\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3\27\0'\4\28\0009\5\29\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\30\0'\4\31\0003\5 \0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3\27\0'\4!\0003\5\"\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3\27\0'\4#\0009\5$\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4&\0009\5'\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4(\0009\5)\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4*\0009\5+\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4,\0009\5-\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4.\0003\5/\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\0040\0003\0051\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\0044\0005\0055\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\0046\0005\0057\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\0048\0005\0059\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\4:\0005\5;\0B\1\4\0012\0\0€K\0\1\0\1\0\1\tlink\vVisual\30MultiCursorDisabledVisual\1\0\1\tlink\vVisual\30MultiCursorDisabledCursor\1\0\1\tlink\vVisual\22MultiCursorVisual\1\0\1\tlink\vCursor\22MultiCursorCursor\16nvim_set_hl\bapi\0\14<leader>T\0\14<leader>t\17matchCursors\6M\17appendVisual\6A\17insertVisual\6I\17splitCursors\6S\6v\17alignCursors\14<leader>a\0\n<esc>\0\n<c-q>\1\3\0\0\6n\6v\16handleMouse\18<c-leftmouse>\6n\17deleteCursor\14<leader>x\1\3\0\0\6n\6v\15prevCursor\f<right>\1\3\0\0\6n\6v\15nextCursor\v<left>\1\3\0\0\6n\6v\0\n<c-s>\1\3\0\0\6n\6v\0\n<c-n>\1\3\0\0\6n\6v\0\v<down>\1\3\0\0\6n\6v\0\t<up>\1\3\0\0\6n\6v\bset\vkeymap\bvim\nsetup\21multicursor-nvim\frequire\0" },
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/multicursor.nvim",
    url = "https://github.com/jake-stewart/multicursor.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["oil.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/vim-obsession",
    url = "https://github.com/tpope/vim-obsession"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/bliss/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: multicursor.nvim
time([[Config for multicursor.nvim]], true)
try_loadstring("\27LJ\2\n)\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6k\14addCursor)\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6j\14addCursor)\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6*\14addCursor*\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\0À\6*\15skipCursore\0\0\2\1\3\0\r-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\1\0B\0\1\1X\0\3€-\0\0\0009\0\2\0B\0\1\1K\0\1\0\0À\14addCursor\19disableCursors\19cursorsEnabledŠ\1\0\0\2\1\4\0\19-\0\0\0009\0\0\0B\0\1\2\14\0\0\0X\0\4€-\0\0\0009\0\1\0B\0\1\1X\0\t€-\0\0\0009\0\2\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\3\0B\0\1\1X\0\0€K\0\1\0\0À\17clearCursors\15hasCursors\18enableCursors\19cursorsEnabled.\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\0À\21transposeCursors.\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ÿÿB\0\2\1K\0\1\0\0À\21transposeCursorsï\b\1\0\6\0<\0š\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\5\0015\3\6\0'\4\a\0003\5\b\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\t\0'\4\n\0003\5\v\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\f\0'\4\r\0003\5\14\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\15\0'\4\16\0003\5\17\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\18\0'\4\19\0009\5\20\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\21\0'\4\22\0009\5\23\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\24\0'\4\25\0009\5\26\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3\27\0'\4\28\0009\5\29\0B\1\4\0016\1\3\0009\1\4\0019\1\5\0015\3\30\0'\4\31\0003\5 \0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3\27\0'\4!\0003\5\"\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3\27\0'\4#\0009\5$\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4&\0009\5'\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4(\0009\5)\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4*\0009\5+\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4,\0009\5-\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\4.\0003\5/\0B\1\4\0016\1\3\0009\1\4\0019\1\5\1'\3%\0'\0040\0003\0051\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\0044\0005\0055\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\0046\0005\0057\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\0048\0005\0059\0B\1\4\0016\1\3\0009\0012\0019\0013\1)\3\0\0'\4:\0005\5;\0B\1\4\0012\0\0€K\0\1\0\1\0\1\tlink\vVisual\30MultiCursorDisabledVisual\1\0\1\tlink\vVisual\30MultiCursorDisabledCursor\1\0\1\tlink\vVisual\22MultiCursorVisual\1\0\1\tlink\vCursor\22MultiCursorCursor\16nvim_set_hl\bapi\0\14<leader>T\0\14<leader>t\17matchCursors\6M\17appendVisual\6A\17insertVisual\6I\17splitCursors\6S\6v\17alignCursors\14<leader>a\0\n<esc>\0\n<c-q>\1\3\0\0\6n\6v\16handleMouse\18<c-leftmouse>\6n\17deleteCursor\14<leader>x\1\3\0\0\6n\6v\15prevCursor\f<right>\1\3\0\0\6n\6v\15nextCursor\v<left>\1\3\0\0\6n\6v\0\n<c-s>\1\3\0\0\6n\6v\0\n<c-n>\1\3\0\0\6n\6v\0\v<down>\1\3\0\0\6n\6v\0\t<up>\1\3\0\0\6n\6v\bset\vkeymap\bvim\nsetup\21multicursor-nvim\frequire\0", "config", "multicursor.nvim")
time([[Config for multicursor.nvim]], false)

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
