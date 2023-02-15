
local packer_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_cloned = false;
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
    print "Cloning packer.nvim..."
    vim.fn.delete(packer_path, "rf")
    vim.fn.system{
        'git', 
        'clone', 
        '--depth', 
        '1', 
        'https://github.com/wbthomason/packer.nvim', 
        packer_path
    }
    vim.cmd [[packadd packer.nvim]]
    packer_cloned = true
end

if packer_cloned then
    require("core.plugins")
    require("packer").sync()
end

