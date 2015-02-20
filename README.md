# NationStatesClone

[Heroku link][heroku]

[heroku]: http://nationstatesclone.herokuapp.com/

A clone of the online nation simulator [NationStates][nationstates], built with a Ruby on Rails JSON API and Backbone.js. Users can create nations, address issues facing them, and see how their nation has been affected by their choices.

[nationstates]: http://www.nationstates.net/

## Implementation

### Ruby on Rails

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
- API NationsController - shows a nation, renders the index of issues, handles editing settings

#### Views
- Application - stores current nation, displays different sidebars depending on whether the user is logged in
- Login Sidebar - partial, lets the user log in or go to the New Nation page
- New Nation Sidebar - partial, displayed on New Nation page
- Errors - displays errors when fields are filled in improperly
- New Session - user can log in or go to the New Nation page
- New Nation - has fields for a new nation's motto/currency/etc, and gets questions for the Question partial
- Question - displays each survey question for nation creation
- API Issues Index - sends each nation's issue's attributes as JSON for the issue index page
- API Issues Show - sends an issue's attributes as JSON for the issue show page
- API Nations Edit - sends a nation's attributes for the edit page
- API Nations Index - sends each nation's attributes for the World (nation index) page
- API Nations Show - sends a nation's attributes for the index page
