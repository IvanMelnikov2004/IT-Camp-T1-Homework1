-- 1. Если базы нет — создаём
CREATE DATABASE IF NOT EXISTS ${CLICKHOUSE_DB};

-- 2. Выбираем контекст
USE ${CLICKHOUSE_DB};

-- 3. Таблица логов
CREATE TABLE IF NOT EXISTS weather_logs (
    city String,
    temperature Float32,
    condition String,
    timestamp DateTime
) ENGINE = MergeTree()
ORDER BY timestamp;
