-- Run this entire script once in Supabase SQL Editor.
create table if not exists public.recall_decks (id uuid primary key default gen_random_uuid(), user_id uuid not null references auth.users(id) on delete cascade, title text not null, deck_data jsonb not null, created_at timestamptz not null default now());
create table if not exists public.recall_progress (user_id uuid primary key references auth.users(id) on delete cascade, progress jsonb not null default '{}'::jsonb, updated_at timestamptz not null default now());
alter table public.recall_decks enable row level security;
alter table public.recall_progress enable row level security;
drop policy if exists "Users manage their own decks" on public.recall_decks;
create policy "Users manage their own decks" on public.recall_decks for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
drop policy if exists "Users manage their own progress" on public.recall_progress;
create policy "Users manage their own progress" on public.recall_progress for all to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
grant select, insert, update, delete on public.recall_decks to authenticated;
grant select, insert, update, delete on public.recall_progress to authenticated;