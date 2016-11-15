#User API
##`GET /users`
**Response:**

- Status Code: 200

Sample Response:

```json
{
	"first_name: "bob",
	last_name: "jones",
	username: "bobjones",
	email: "bobjones@gmail.com"
}
```

##`POST /users`
**Body Parameters:**

- first_name: *String*
- last_name: *String*
- username: *String*
- email: *String*

**Response:**

- Status Code: 201

Sample Response:

```json
{
	"first_name: "bob",
	last_name: "jones",
	username: "bobjones",
	email: "bobjones@gmail.com"
}
```

##`PUT /users/:id`
**Body Parameters:**

- first_name: *String*
- last_name: *String*
- username: *String*
- email: *String*


**Response:**

- Status Code: 200

Sample Response:

```json
{
	"first_name: "bob",
	last_name: "jones",
	username: "bobjones",
	email: "bobjones@gmail.com"
}
```

##`DELETE /users/:id`
**Response:**

- Status Code: 200





