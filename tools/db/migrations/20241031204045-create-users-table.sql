
-- +migrate Up
CREATE TABLE IF NOT EXISTS users (
    id uuid primary key,
    first_name varchar not null,
    last_name varchar not null,
    email varchar not null unique,
    password varchar not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    deleted_at timestamptz
);

CREATE INDEX users_deleted_at_idx ON users (deleted_at);

-- +migrate Down

DROP TABLE IF EXISTS users;