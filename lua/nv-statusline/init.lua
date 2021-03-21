local gl = require("galaxyline")
local gls = gl.section
gl.short_line_list = { }

local colors = {
	bg = "#282c34",
	line_bg = "#282c34",
	fg = "#D8DEE9",
	fg_green = "#65a380",
	yellow = "#A3BE8C",
	cyan = "#22262C",
	darkblue = "#61afef",
	green = "#BBE67E",
	orange = "#FF8800",
	purple = "#252930",
	magenta = "#c678dd",
	blue = "#22262C",
	red = "#DF8890",
	lightbg = "#3C4048",
	nord = "#81A1C1",
	greenYel = "#EBCB8B"
}

gls.left[1] = {
	FileIcon = {
		provider = "FileIcon",
		condition = buffer_not_empty,
		highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.lightbg},
		separator = " "
	}
}

gls.left[2] = {
	FileName = {
		provider = {"FileName", "FileSize"},
		condition = buffer_not_empty,
		highlight = {colors.fg, colors.lightbg}
	}
}

gls.left[3] = {
	teech = {
		provider = function()
			return ""
		end,
		separator = " ",
		highlight = {colors.lightbg, colors.bg}
	}
}

local checkwidth = function()
	local squeeze_width = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

gls.left[4] = {
	DiffAdd = {
		provider = "DiffAdd",
		condition = checkwidth,
		icon = "   ",
		highlight = {colors.greenYel, colors.line_bg}
	}
}

gls.left[5] = {
	DiffModified = {
		provider = "DiffModified",
		condition = checkwidth,
		icon = " ",
		highlight = {colors.orange, colors.line_bg}
	}
}

gls.left[6] = {
	DiffRemove = {
		provider = "DiffRemove",
		condition = checkwidth,
		icon = " ",
		highlight = {colors.red, colors.line_bg}
	}
}

gls.left[7] = {
	LeftEnd = {
		provider = function()
			return " "
		end,
		separator = " ",
		separator_highlight = {colors.line_bg, colors.line_bg},
		highlight = {colors.line_bg, colors.line_bg}
	}
}

gls.left[8] = {
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = {colors.red, colors.bg}
	}
}

gls.left[9] = {
	Space = {
		provider = function()
			return " "
		end,
		highlight = {colors.line_bg, colors.line_bg}
	}
}

gls.left[9] = {
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = {colors.blue, colors.bg}
	}
}

gls.right[1] = {
	GitIcon = {
		provider = function()
			return "   "
		end,
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = {colors.green, colors.line_bg}
	}
}

gls.right[2] = {
	GitBranch = {
		provider = "GitBranch",
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = {colors.green, colors.line_bg}
	}
}

gls.right[3] = {
	ShowLspClient = {
		provider = 'GetLspClient',
		condition = function()
			local tbl = {['dashboard'] = true, [' '] = true}
			if tbl[vim.bo.filetype] then return false end
			return true
		end,
		icon = 'ﮒ ',
		highlight = {colors.nord, colors.bg, 'bold'}
	}
}

gls.right[4] = {
	FileIcon = {
		provider = "FileIcon",
		condition = buffer_not_empty,
		separator = " ",
		highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.bg}
	}
}

gls.right[5] = {
	BufferType = {
		provider = 'FileTypeName',
		separator = ' ',
		separator_highlight = {'NONE', colors.bg},
		highlight = {colors.darkblue, colors.bg, 'bold'}
	}
}

gls.right[6] = {
	right_LeftRounded = {
		provider = function()
			return ""
		end,
		separator = " ",
		separator_highlight = {colors.bg, colors.bg},
		highlight = {colors.red, colors.bg}
	}
}

gls.right[7] = {
	SiMode = {
		provider = function()
			local alias = {
				n = "NORMAL",
				i = "INSERT",
				c = "COMMAND",
				V = "VISUAL",
				[""] = "VISUAL",
				v = "VISUAL",
				R = "REPLACE"
			}
			return alias[vim.fn.mode()]
		end,
		highlight = {colors.bg, colors.red}
	}
}

gls.right[8] = {
	LineInfo = {
		provider = 'LineColumn',
		separator = '  ',
		separator_highlight = {colors.red, colors.red},
		highlight = {colors.bg, colors.fg}
	}
}

gls.right[9] = {
	PerCent = {
		provider = "LinePercent",
		separator = " ",
		separator_highlight = {colors.bg, colors.fg},
		highlight = {colors.bg, colors.fg}
	}
}

gls.right[10] = {
	rightRounded = {
		provider = function()
			return ""
		end,
		highlight = {colors.fg, colors.bg}
	}
}

