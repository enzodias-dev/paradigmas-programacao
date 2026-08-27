function contarOcorrencias(tabela, alvo)
    local contador = 0
    for i = 1, #tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end
    return contador
end

io.write("Digite a quantidade de elementos (N): ")
local N = tonumber(io.read())

local tabela = {}
for i = 1, N do
    io.write("Digite o elemento " .. i .. ": ")
    tabela[i] = tonumber(io.read())
end

io.write("Digite o número X a ser buscado: ")
local X = tonumber(io.read())

local ocorrencias = contarOcorrencias(tabela, X)
print("O número " .. X .. " aparece " .. ocorrencias .. " vez(es) na tabela.")
