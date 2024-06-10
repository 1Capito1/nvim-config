local config = {
    cmd = {'java'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mnvw'}, {upward = true})[1]),
}
require('jdtls').start_or_attach(config)
