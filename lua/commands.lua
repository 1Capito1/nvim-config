-- compile and run current file
function Run()
    local filename = vim.fn.expand("%:t")
    local file_ext = vim.fn.fnamemodify(filename, ":e")

    if file_ext == "rs" then
        vim.cmd(":term cargo run")
    elseif file_ext == "lua" then
        vim.cmd("so")
    elseif file_ext == "c" then
        vim.cmd(":term clang " .. filename .. " | ./a.out")
    else
        print("unknown file type")
    end
end


-- test current file
function Test()
    local filename = vim.fn.expand("%:t")
    local file_ext = vim.fn.fnamemodify(filename, ":e")

    if file_ext == "rs" then
        vim.cmd(":term cargo test")
    else
        print("unknown file type")
    end
end

vim.cmd("command! Run lua Run()")
vim.cmd("command! Test lua Test()")
