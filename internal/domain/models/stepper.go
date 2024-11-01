package models

import (
	"time"

	"github.com/google/uuid"
)

type Stepper struct {
	ID        uuid.UUID  `json:"id"`
	IsDefault bool       `json:"is_default"`
	UserID    *uuid.UUID `json:"user_id"`
	CreatedAt time.Time  `json:"created_at"`
	UpdatedAt time.Time  `json:"updated_at"`
	DeletedAt *time.Time `json:"deleted_at"`
}
