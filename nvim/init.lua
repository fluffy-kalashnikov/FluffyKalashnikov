local clone_packer = function()
    local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local is_packer_unsynced = clone_packer()


require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    if is_packer_unsynced then
        require('packer').sync()
    end
end)


if is_packer_unsynced then
    print '========================================='
    print ' packer.nvim syncing, restart when done  '
    print '========================================='
    return
end