BEGIN;

-- Com novos indices clusterizados nos campos filtrados no where

CREATE INDEX teste_movie_aliases_iso_language ON movie_aliases_iso USING btree (language);
CLUSTER movie_aliases_iso USING teste_movie_aliases_iso_language;

CREATE INDEX teste_movies_date ON movies USING btree (date);
CLUSTER movies USING teste_movies_date;

\i ./consulta.sql

ROLLBACK;