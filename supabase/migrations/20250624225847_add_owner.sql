drop policy "create access all users" on "public"."activities";

alter table "public"."activities" add column "user_id" uuid default auth.uid();

create policy "Enable delete for users based on user_id"
on "public"."activities"
as permissive
for delete
to authenticated
using ((( SELECT auth.uid() AS uid) = user_id));


create policy "Enable update for users based on user_id"
on "public"."activities"
as permissive
for update
to authenticated
using (true)
with check ((( SELECT auth.uid() AS uid) = user_id));


create policy "create access all users"
on "public"."activities"
as permissive
for insert
to authenticated
with check (true);



