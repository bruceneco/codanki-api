
-- +migrate Up
CREATE TABLE IF NOT EXISTS steps (
    id uuid primary key,
    stepper_id uuid not null,
    position int not null,
    minutes_increment int not null,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    foreign key (stepper_id) references steps (id)
);


-- +migrate Down

DROP TABLE IF EXISTS steps;