package adapters

import (
	"codanki-api/internal/adapters/amqp"
	"codanki-api/internal/adapters/db/postgres"
	"codanki-api/internal/adapters/http"

	"go.uber.org/fx"
)

var Module = fx.Options(
	fx.Provide(
		postgres.NewConnection,
		amqp.NewConnection,
	),
	http.Module,
)
