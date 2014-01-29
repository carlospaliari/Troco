#http://repl.it/L81/5

valor_do_troco = (troco) ->
  quantidades_de_notas_de_100 = quantias_das_notas(troco, 100)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_100, 100)

  quantidades_de_notas_de_50 = quantias_das_notas(troco, 50)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_50, 50)

  quantidades_de_notas_de_20 = quantias_das_notas(troco, 20)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_20, 20)

  quantidades_de_notas_de_10 = quantias_das_notas(troco, 10)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_10, 10)

  quantidades_de_notas_de_5 = quantias_das_notas(troco, 5)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_5, 5)

  quantidades_de_notas_de_2 = quantias_das_notas(troco, 2)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_2, 2)

  quantidades_de_notas_de_1 = quantias_das_notas(troco, 1)
  troco = quantidades_de_notas(troco, quantidades_de_notas_de_1, 1)

  quantidades_de_moedas_de_50 = quantias_das_notas(troco, 0.5)
  troco = quantidades_de_notas(troco, quantidades_de_moedas_de_50, 0.5)

  quantidades_de_moedas_de_25 = quantias_das_notas(troco, 0.25)
  troco = quantidades_de_notas(troco, quantidades_de_moedas_de_25, 0.25)

  quantidades_de_moedas_de_10 = quantias_das_notas(troco, 0.10)
  troco = quantidades_de_notas(troco, quantidades_de_moedas_de_10, 0.10)

  quantidades_de_moedas_de_05 = quantias_das_notas(troco, 0.05)
  troco = quantidades_de_notas(troco, quantidades_de_moedas_de_05, 0.05)

  quantidades_de_moedas_de_01 = quantias_das_notas(troco, 0.01)

  return [
    "100": quantidades_de_notas_de_100
    "50": quantidades_de_notas_de_50
    "20": quantidades_de_notas_de_20
    "10": quantidades_de_notas_de_10
    "5": quantidades_de_notas_de_5
    "2": quantidades_de_notas_de_2
    "1": quantidades_de_notas_de_1
    "05": quantidades_de_moedas_de_50
    "025": quantidades_de_moedas_de_25
    "01": quantidades_de_moedas_de_10
    "005": quantidades_de_moedas_de_05
    "001": quantidades_de_moedas_de_01
  ]

quantias_das_notas = (troco, valor_da_nota) ->
  a = troco / valor_da_nota
  b = Math.floor(a)
  v = Math.round(b)
  console.log 'a: ', a, 'v:', v, 'troco: ', troco, 'vf:', valor_da_nota
  return v

quantidades_de_notas = (troco, quantidades_das_notas, valor_da_nota) ->
  return (troco - valor_da_nota * quantidades_das_notas)