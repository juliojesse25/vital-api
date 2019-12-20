## Vital API

**_Description_**

This is the Backend of the Vital Full Stack Web Application I developed using Ruby on Rails and MySQL for a database.

**_Technologies_**

- Ruby on Rails
- MySQL
- Curl Scripts

**_Future Features_**

- Add a Logins resource so that all logins are stored in a logins table.
- Add a change password route so the user is able to change passwords.

**_User Stories_**

As a user I would like to be able to;

- Register and Login.
- See the number of times I have logged in.
- See my last login date and time.
- Logout when logged in.

**_Routes_**

`resources :sessions, only: [:create]`
`resources :registrations, only: [:create]`
`delete :logout, to: "sessions#logout"`
`get :logged_in, to: "sessions#logged_in"`

**_Links_**

Link to frontend repo: https://github.com/juliojesse25/my-vital-frontend

Link to backend repo: https://github.com/juliojesse25/vital-api
