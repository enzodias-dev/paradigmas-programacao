Dim peso As Single
Dim aguaIngerida As Single
Dim metaDiaria As Single

Print "--- META DE AGUA ---"
Input "DIGITE SEU PESO (KG): ", peso
Input "QUANTIDADE DE AGUA JA INGERIDA (ML): ", aguaIngerida

metaDiaria = peso * 35

If aguaIngerida >= metaDiaria Then
    Print "META ATINGIDA!"
Else
    Print "META NAO ATINGIDA"
End If

Print "SUA META DIARIA E: "; metaDiaria; " ML"
Sleep
