# 📊 SQL Queries — TeoMeWhy Loyalty System

Repositório com consultas SQL desenvolvidas durante os estudos no curso do canal **[Téo Me Why](https://www.twitch.tv/teomewhy)**, utilizando dados reais do sistema de pontos de fidelidade da comunidade.

---

## 📁 Sobre o Dataset

Os dados utilizados são do **TeoMeWhy Loyalty System**, disponíveis publicamente no Kaggle:

🔗 [teocalvo/teomewhy-loyalty-system](https://www.kaggle.com/datasets/teocalvo/teomewhy-loyalty-system)

Trata-se de um dataset real extraído do sistema de pontos da comunidade Téo Me Why, onde usuários acumulam e resgatam pontos durante as lives na Twitch. O banco é composto pelas seguintes tabelas principais:

| Tabela | Descrição |
|---|---|
| `customers` | Cadastro dos usuários/clientes |
| `transacoes` | Registro de todas as movimentações de pontos |
| `products` | Produtos disponíveis para resgate |
| `transacoes_produtos` | Itens vinculados a cada transação |

---


---

## 🧠 Conceitos Abordados

- `SELECT`, `WHERE`, `ORDER BY`
- `GROUP BY`, `HAVING`
- Funções de agregação: `SUM`, `COUNT`, `AVG`, `MIN`, `MAX`
- `CASE WHEN` para colunas calculadas e condicionais
- `JOIN` (INNER, LEFT, RIGHT)
- Subqueries
- Window Functions
- Boas práticas de escrita de SQL

---

## 💡 Exemplo de Query

```sql
-- Análise de pontos ganhos e perdidos em Julho/2025
SELECT
    SUM(qtdePontos)                                        AS total_pontos,
    SUM(CASE WHEN qtdePontos > 0 THEN qtdePontos END)     AS pts_positivos,
    SUM(CASE WHEN qtdePontos < 0 THEN qtdePontos END)     AS pts_negativos,
    COUNT(CASE WHEN qtdePontos < 0 THEN qtdePontos END)   AS transacoes_negativas
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao  < '2025-08-01';
```

---

## 🛠️ Ferramentas

- **SQL** (MySQL / SQLite)
- Dataset disponível no [Kaggle](https://www.kaggle.com/datasets/teocalvo/teomewhy-loyalty-system)
- Referência de estudo: curso **TeoSQL** do canal [Téo Me Why](https://github.com/TeoCalvo/teoSQL)

---

## 📚 Referências

- [Canal Téo Me Why — Twitch](https://www.twitch.tv/teomewhy)
- [Curso TeoSQL — GitHub](https://github.com/TeoCalvo/teoSQL)
- [Dataset no Kaggle](https://www.kaggle.com/datasets/teocalvo/teomewhy-loyalty-system)
- Livro: *Introdução à Linguagem SQL* — Thomas Nield (O'Reilly)

---

## 👤 Autor

Feito com 💙 durante os estudos de SQL.  
Sinta-se à vontade para explorar, sugerir melhorias ou abrir uma issue!
