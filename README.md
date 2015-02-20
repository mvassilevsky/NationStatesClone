# NationStatesClone

[Heroku link][heroku]

[heroku]: http://nationstatesclone.herokuapp.com/

A clone of the online nation simulator [NationStates][nationstates], built with
Rails and Backbone.js. Users can create nations, address issues facing them,
and see how their nation has been affected by their choices.

[nationstates]: http://www.nationstates.net/

## Implementation
### Rails
#### Models
- Nation - main backend model, stores login information and contains the logic for most of the descriptions
- Issue - stores the title and body text of an issue, and has IssueOptions
- IssueOption - stores the effects of an option of an issue
- NationIssue - links nations to issues
- NationStat - stores a nation's historical stats
#### Controllers
- ApplicationController - handles signing in, logging out, and getting the current nation
- NationsController - creates a new nation and gets issues for it
- SessionsController - creates and destroys a user's session
- API IssuesController - shows, responds to, and dismisses issues
- API NationsController -shows a nation, renders the index of issues, handles editing settings
