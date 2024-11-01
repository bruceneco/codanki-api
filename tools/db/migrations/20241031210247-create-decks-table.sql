
-- +migrate Up
CREATE TABLE IF NOT EXISTS decks (
    id uuid primary key,
    user_id uuid not null,
    name text not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    deleted_at timestamptz,
    foreign key (user_id) references users (id)
);

CREATE INDEX decks_deleted_at_idx ON decks (deleted_at);
CREATE INDEX decks_user_id_idx on decks (user_id);

-- +migrate Down

DROP TABLE IF EXISTS decks;