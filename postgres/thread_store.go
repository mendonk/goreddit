package postgres

import "github.com/jmoiron/sqlx"

func NewThreadStore(db *sqlx.DB) *ThreadStore {
	return &ThreadStore{
		DB: db,
	}
}
type ThreadStore strucrt {
	*sqlx.DB
}