
-- +migrate Up
CREATE TABLE IF NOT EXISTS cards (
    id uuid primary key,
    user_id uuid not null,
    deck_id uuid,
    content text not null,
    step int not null default 0,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    deleted_at timestamptz,
    foreign key (user_id) references users (id),
    foreign key (deck_id) references decks (id)
);

CREATE INDEX cards_deleted_at_idx ON cards (deleted_at);
CREATE INDEX cards_user_id_idx on cards (user_id);
CREATE INDEX cards_deck_id_idx on cards (deck_id);

-- +migrate Down

DROP TABLE IF EXISTS cards;