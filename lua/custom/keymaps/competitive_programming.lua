require 'globals'

api_map('n', '<F1>', '<cmd>:w | :!g++ -std=c++17 % && ./a.out<cr>', { noremap = true, silent = true, desc = 'Compile and run C++ file' })
