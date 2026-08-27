function gerarTabelaPotencias(inicio, fim, base)
    for expoente = inicio, fim do
        print(base .. " ^ " .. expoente .. " = " .. base ^ expoente)
    end
end

io.write("Digite o expoente inicial (M): ")
local M = tonumber(io.read())

io.write("Digite o expoente final (N): ")
local N = tonumber(io.read())

io.write("Digite a base: ")
local base = tonumber(io.read())

gerarTabelaPotencias(M, N, base)
