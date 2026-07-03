# 1. Definição das variáveis para teste (você pode alterar os valores para testar)
bateria_atual = 12       # Valor inteiro de 0 a 100
bola_em_jogo = True      # Booleano: True (em movimento) ou False (paralisada)

# 2. Processamento das condições de forma ordenada
if bateria_atual < 15 and bola_em_jogo:
    # Condição 1: Bateria abaixo de 15% E bola em jogo
    print("ALERTA MÁXIMO: Bateria baixa! Substitua a bola na próxima paralisação.")

elif bateria_atual < 15 and not bola_em_jogo:
    # Condição 2: Bateria abaixo de 15% E bola parada
    print("Aviso: Bateria baixa. Aproveite a bola parada para trocá-la.")

else:
    # Condição 3: Caso geral (bateria igual ou acima de 15%)
    print("Sistema Trionda operando normalmente. Bateria ok.")
