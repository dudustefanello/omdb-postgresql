BEGIN;

-- Sem as primary keys de todas as tabelas envolvidas

ALTER TABLE public.casts DROP CONSTRAINT casts_pkey CASCADE;
ALTER TABLE public.movies DROP CONSTRAINT movies_pkey CASCADE;
ALTER TABLE public.movie_aliases_iso DROP CONSTRAINT movie_aliases_iso_pkey CASCADE;
ALTER TABLE public.people DROP CONSTRAINT people_pkey CASCADE;

\i ./consulta.sql

ROLLBACK;