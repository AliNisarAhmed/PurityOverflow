## Rest API Documentation

Autogenerated using Servant Docs

## POST /api/auth/login

### Request:

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"username":"superCoolUsername","password":"abc123"}
```

### Response:

- Status code 200
- Headers: [("Set-Cookie","<no header sample provided>"),("Set-Cookie","<no header sample provided>")]

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"firstname":"FirstName","surname":"Surname","auId":2}
```

## POST /api/auth/signup

### Request:

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"email":"email@sample.com","repeatPassword":"abc123","username":"superCoolUsername","password":"abc123","firstname":"FirstName","surname":"Surname"}
```

### Response:

- Status code 204
- Headers: []

- No response body

## GET /api/questions

### Response:

- Status code 200
- Headers: []

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
[]
```

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
[{"createdAt":"2021-08-19T00:00:00Z","content":"Question Content","userId":2,"id":1,"updatedAt":"2021-08-21T00:00:00Z","title":"Question Title"}]
```

- Example (`application/json;charset=utf-8`):

```javascript
[{"createdAt":"2021-08-19T00:00:00Z","content":"Question Content","userId":2,"id":1,"updatedAt":"2021-08-21T00:00:00Z","title":"Question Title"},{"createdAt":"2021-08-19T00:00:00Z","content":"Question Content","userId":2,"id":1,"updatedAt":"2021-08-21T00:00:00Z","title":"Question Title"}]
```

## POST /api/questions

### Request:

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"content":"Question Content","userId":2,"title":"Question Title"}
```

### Response:

- Status code 200
- Headers: []

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"createdAt":"2021-08-19T00:00:00Z","content":"Question Content","userId":2,"id":1,"updatedAt":"2021-08-21T00:00:00Z","title":"Question Title"}
```

## PATCH /api/questions/:questionId

### Captures:

- *questionId*: Question Id

### Request:

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"updatedContent":"Updated Content"}
```

### Response:

- Status code 200
- Headers: []

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"createdAt":"2021-08-19T00:00:00Z","content":"Question Content","userId":2,"id":1,"updatedAt":"2021-08-21T00:00:00Z","title":"Question Title"}
```

## GET /api/questions/:questionId/answers

### Captures:

- *questionId*: Question Id

### Response:

- Status code 200
- Headers: []

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
[]
```

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
[{"createdAt":"2021-08-19T00:00:00Z","authorId":2,"content":"Answer Content","id":3,"updatedAt":"2021-08-21T00:00:00Z","questionId":1}]
```

- Example (`application/json;charset=utf-8`):

```javascript
[{"createdAt":"2021-08-19T00:00:00Z","authorId":2,"content":"Answer Content","id":3,"updatedAt":"2021-08-21T00:00:00Z","questionId":1},{"createdAt":"2021-08-19T00:00:00Z","authorId":2,"content":"Answer Content","id":3,"updatedAt":"2021-08-21T00:00:00Z","questionId":1}]
```

## POST /api/questions/:questionId/answers

### Captures:

- *questionId*: Question Id

### Request:

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"authorId":2,"answerContent":"Answer Content"}
```

### Response:

- Status code 200
- Headers: []

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"createdAt":"2021-08-19T00:00:00Z","authorId":2,"content":"Answer Content","id":3,"updatedAt":"2021-08-21T00:00:00Z","questionId":1}
```

## PATCH /api/questions/:questionId/answers/:answerId

### Captures:

- *questionId*: Question Id
- *answerId*: Answer Id

### Request:

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"updatedContent":"Updated Content"}
```

### Response:

- Status code 200
- Headers: []

- Supported content types are:

    - `application/json;charset=utf-8`
    - `application/json`

- Example (`application/json;charset=utf-8`, `application/json`):

```javascript
{"createdAt":"2021-08-19T00:00:00Z","authorId":2,"content":"Answer Content","id":3,"updatedAt":"2021-08-21T00:00:00Z","questionId":1}
```
