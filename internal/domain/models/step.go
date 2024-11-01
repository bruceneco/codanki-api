package models

import (
	"time"

	"github.com/google/uuid"
)

type Step struct {
	ID               uuid.UUID `json:"id"`
	StepperID        uuid.UUID `json:"stepper_id"`
	Position         uint8     `json:"position"`
	MinutesIncrement int       `json:"increment"`
	CreatedAt        time.Time `json:"created_at"`
	UpdatedAt        time.Time `json:"updated_at"`
}
