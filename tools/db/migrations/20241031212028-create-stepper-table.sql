
-- +migrate Up
CREATE TABLE IF NOT EXISTS steppers (
    id uuid primary key,
    is_default boolean default false,
    user_id uuid unique,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    deleted_at timestamptz,
    foreign key (user_id) references users (id)
);

CREATE INDEX steppers_deleted_at_idx ON steppers (deleted_at);

-- +migrate Down

DROP TABLE IF EXISTS steppers;