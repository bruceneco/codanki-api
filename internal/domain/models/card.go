package models

import (
	"time"

	"github.com/google/uuid"
)

type Card struct {
	ID           uuid.UUID  `json:"id"`
	UserID       uuid.UUID  `json:"user_id"`
	DeckID       *uuid.UUID `json:"deck_id"`
	Content      string     `json:"content"`
	Step         uint8      `json:"step"`
	NextRevision time.Time  `json:"next_revision"`
	CreatedAt    time.Time  `json:"created_at"`
	UpdatedAt    time.Time  `json:"updated_at"`
	DeletedAt    *time.Time `json:"deleted_at"`
}
