# 🛒 Brazilian E-Commerce Sales Analysis

Анализ реальных данных маркетплейса Olist (2016–2018): 
100k+ заказов, 32 категории товаров, 27 штатов Бразилии.

## 📊 Ключевые находки

- **Пиковый рост** выручки — ноябрь 2017 (Black Friday): +180% к среднему
- **Топ-категория** — bed_bath_table (~1.4M BRL), но лучший рейтинг у музыкальных инструментов (4.6 ⭐)
- **Медианная доставка** — 12 дней; 20% заказов доставляются дольше 3 недель
- **77% покупателей** ставят оценку 4 или 5 — высокая лояльность
- **SP (Сан-Паулу)** генерирует 42% всех заказов

## 🔍 Что исследовалось

1. Динамика выручки по месяцам
2. Топ-10 категорий товаров
3. Распределение времени доставки
4. Анализ удовлетворённости покупателей
5. Связь цены и рейтинга по категориям

## 🛠 Стек

Python · Pandas · SQLite · Matplotlib · Seaborn · Jupyter

## 📁 Структура

\`\`\`
├── notebooks/analysis.ipynb   # Весь анализ
├── sql/queries.sql            # SQL-запросы
├── create_db.py               # Создание SQLite БД
├── images/                    # Графики
└── data/                      # CSV файлы (не в git)
\`\`\`

## 🚀 Запуск

\`\`\`bash
pip install pandas matplotlib seaborn jupyter
python create_db.py
jupyter notebook notebooks/analysis.ipynb
\`\`\`

## 📌 Датасет

[Brazilian E-Commerce by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) — 
публичный датасет реальных транзакций бразильского маркетплейса.