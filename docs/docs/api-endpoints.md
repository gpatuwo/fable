# API Endpoints (from the example)

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Users

- `POST /api/users`
- `PATCH /api/users`

### Session

- `POST /api/session`
- `DELETE /api/session`
- `GET /api/session`

### Recipes

- `GET /api/recipes`
  - Recipes index/search
- `POST /api/recipes`
- `GET /api/recipes/:id`
- `PATCH /api/recipes/:id`
- `DELETE /api/recipes/:id`

### Vegetables

- `GET /api/vegetables`
- `POST /api/vegetables`
- `GET /api/vegetables/:id`
- `DELETE /api/vegetables/:id`
- `GET /api/vegetables/:id/recipes`
  - index of all recipes for a vegetable
