# Basic Routes

These appear in the browser as the suffix in the address bar or in the API server after the API id-version suffix

e.g. `example.nep.work/proxe-v2/aid`.

## Anonymous Usage

- `/aid` Anonymous Identity *[GET, DELETE]*
- `/icr` Invitation Create-Edit-Remove *[POST, PUT, PATCH, DELETE]*
- `/inv` Invitation Share-Join *[POST, PATCH]*
- `/van` Verified Anonymity *[GET, POST, PUT, PATCH, DELETE, OPTIONS]*

## Authenticated Usage

- `/log-in` Log in *[POST]*
- `/log-out` Log out *[DELETE]*
- `/join-in` Sign Up *[POST]*
- `/del-acct` Delete Account *[DELETE]*

## Authorized Usage

- `/add-roles` Add roles *[POST, PUT, PATCH]*
- `/del-roles` Delete roles *[POST, DELETE]*
- `/add-groups` Add groups *[POST, PUT, PATCH]*
- `/del-groups` Delete groups *[POST, DELETE]*

## Persistent Usage

- `/add-objs/obj-type` Add or edit entity objects or archetype objects *[POST, PUT, PATCH]*
- `/delete-objs/obj-ids` Delete entity objects *[POST, DELETE]*
- `/app-obj/src-obj-id/part-obj-ids` Appends a part object into a source object *[POST, PUT, PATCH]*
- `/rem-obj/src-obj-id/remv-obj-ids` Removes a part object out of a source object *[POST, PUT, PATCH]*
