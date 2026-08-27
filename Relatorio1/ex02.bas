Dim pinCorreto As Integer
Dim pinDigitado As Integer

pinCorreto = 4321

Print "--- SISTEMA DE ACESSO ---"
Input "DIGITE O PIN: ", pinDigitado

While pinDigitado <> pinCorreto
    Print "PIN INVALIDO. TENTE NOVAMENTE."
    Input "DIGITE O PIN: ", pinDigitado
Wend

Print "TRANSACAO AUTORIZADA!"
Sleep
