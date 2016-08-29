## Component Heirarchy

**AuthFormContainer**
 - AuthForm

**HomeContainer**
 - Home
 - Navbar

**VegetablesContainer**
 - VegetablesHeader
  * VegetableIndex
  + RecipeIndex

**RecipeContainer**
 - RecipeHeader

**SearchResultsContainer**
 - Search
 - VegetableIndex

**VegetableIndex**
 - VegetableIndexItem
  + VegetableDetail

**NewVegetableContainer**
 - NewVegetable
  - RTETools
  - NewVegetableButton

**Search**

**NewRecipe**
 - NewRecipe

**RecipeSearch**
 + AutoSearch
 * AutoSearchResults

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/home/vegetable/:vegetableId" | "VegetablesContainer" |
| "/home/vegetable/:vegetableId/recipes" | "VegetableRecipesContainer" |
| "/home/recipe/:recipeId" | "RecipeContainer" |
| "/home/search-results" | "SearchResultsContainer"
| "/search" | "Search" |
| "/new-vegetable" | "NewVegetableContainer" |
| "/new-recipe" | "NewRecipe" |
| "/vegetable-search" | "VegetableSearch" |

| "/new-tag" | "NewTag" |
| "/tag-search" | "TagSearch" |
| "/home/tag/:tagId/note/:notedId" | "TagContainer" |
