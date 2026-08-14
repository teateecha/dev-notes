-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")


local function create_class_files()
local class_name = vim.fn.input("Enter class name: ")
if class_name == "" then return end

local upper_name = class_name:upper()
local hpp_path = vim.fn.getcwd() .. "/" .. class_name .. ".hpp"
local cpp_path = vim.fn.getcwd() .. "/" .. class_name .. ".cpp"

-- Header file
local hpp_content = string.format([[
#ifndef %s_HPP
#define %s_HPP

class %s
{
	public:
		%s();
		%s(const %s& other);
		%s& operator=(const %s& other);
		~%s();

	private:

};

#endif
]], upper_name, upper_name, class_name, class_name, class_name, class_name, class_name, class_name, class_name)

-- Source file
local cpp_content = string.format([[
#include "%s.hpp"

%s::%s()
{
	// Constructor
}

%s::%s(const %s& other)
{
	// Copy constructor
}

%s& %s::operator=(const %s& other)
{
	// Copy assignment
	if (this != &other)
	{
		// TODO
	}
	return *this;
}

%s::~%s()
{
	// Destructor
}
]], class_name, class_name, class_name, class_name, class_name, class_name, class_name, class_name, class_name, class_name, class_name)

-- Write files
vim.fn.writefile(vim.split(hpp_content, "\n"), hpp_path)
vim.fn.writefile(vim.split(cpp_content, "\n"), cpp_path)

print("Created " .. hpp_path .. " and " .. cpp_path)
end

-- Create a command
vim.api.nvim_create_user_command("CreateClass", create_class_files, {})
~/.config/nvim/lua/config/autocmds.lua
