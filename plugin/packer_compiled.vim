" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/jem/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jem/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jem/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jem/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jem/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin"
  },
  ["nv-colorschemes"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nv-colorschemes"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/jem/.local/share/nvim/site/pack/packer/start/vim-startify"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
