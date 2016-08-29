```json
{
  currentUser: {
    id: 1,
    username: "grace"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createRecipe: {errors: ["body can't be blank"]}
  },
  vegetables: {
    1: {
      name: "Purslane",
      description: "Grace's favorite salad green",
      start_date: 4,
      end_date: 11
    }
  },
  recipes: {
    1: {
      title: "Purslane and Grilled Peach Salad",
      ingredients: "4 peaches, handful of purslane for each serving, feta, pine nuts",
      instructions: "1. Wash your purslane really well. 2. De-pit and grill the peaches 3. As you wait for the peaches to cool, toast some pine nuts and crumble some feta 4. plate all four things together and toss with some olive oil and a squeeze of lemon.",
      author_id: 1,
    }
  }
}
```
