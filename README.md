# NationStatesClone

[Heroku link][heroku]

[heroku]: https://gentle-gorge-8127.herokuapp.com/

## Minimum Viable Product
NationStatesClone is a clone of the nation simulator NationStates, built with
Rails and Backbone. Users will be able to:

- [x] Create nations
- [x] Create sessions (logging in)
- [x] Respond to issues (or dismiss them)
- [x] View nation overview
- [x] Change own nation's properties
- [x] Search for nations by name

## Design Documents
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: Authentication and Nation Creation (~1-2 days)
I will add nation (user) authentication in Rails, so users will be able to
log in. They will also be able to register by creating a new nation. The app
will also be pushed to Heroku in this phase. I will also add a sidebar with
which the user can log in.

[Details][phase-1]

### Phase 2: Responding to Issues (~3 days)
After this phase, the user will be able to view issues facing their nation,
select the option they prefer, see the changes caused by the issue, and
get new issues. I will add API routes to send the issue data, and Backbone
collections that process them.

[Details][phase-2]

### Phase 3: Change Nation Settings (~1 day)
After this phase, the user will be able to change some of the nation's
settings (currency, national animal, etc). I'll add a form that will be
linked to by the "Settings" link in the sidebar.

[Details][phase-3]

### Phase 4: Search (~1 day)
After this phase, the user will be able to search for a nation by its name.
I will add a search route and a view in Backbone to display the search
results, with links to the found nations.

[Details][phase-4]

### Phase 5: Nation/Issue Enhancements (~1 day)
I will add more functionality to issues and nations, allowing issues to have
more kinds of effects on a nation, the results of which will be shown in the
nation overview page.

[phase-1]: ./docs/phases/phase1.md
[phase-2]: ./docs/phases/phase2.md
[phase-3]: ./docs/phases/phase3.md
[phase-4]: ./docs/phases/phase4.md
