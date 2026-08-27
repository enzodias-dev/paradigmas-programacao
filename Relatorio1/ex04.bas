Dim distancia As Single
Dim tempo As Single
Dim pace As Single

Print "--- CALCULO DE PACE ---"
Input "DISTANCIA PERCORRIDA (KM): ", distancia
Input "TEMPO TOTAL (MIN): ", tempo

pace = tempo \ distancia

Print "PACE MEDIO: "; pace; " MIN/KM"
Sleep
