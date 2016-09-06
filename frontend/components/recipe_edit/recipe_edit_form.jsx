import React from 'react';
import {withRouter} from 'react-router';

class RecipeEditForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = props.recipe;
    this.handleUpdate = this.handleUpdate.bind(this);
    this.uploadPhoto = this.uploadPhoto.bind(this);
  }


  update(property){
      return e => this.setState({[property]: e.target.value});
  }


  handleUpdate(e){
    e.preventDefault();
    const recipe = Object.assign({}, this.state);
    const recipeId = this.state.id;
    this.props.updateRecipe(recipeId, {recipe});
  }

  uploadPhoto(e) {
    e.preventDefault();
    cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, (error, results) => {
      if(!error) {
        this.setState({image: results[0].url});
      } else {
        console.log('ugh cloudinary upload error');
      }
    });
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map( (error, i) => (
            <li key={`error-${i}`}>
              {error}
            </li>
        ))}
      </ul>
    );
  }

  render(){
    return(
      <div className="new-recipe-container">
        <div className="new-recipe-form">
          <h3 className="new-recipe-title">Edit This Recipe</h3>

          {this.props.errors ? this.renderErrors(): ""}

          <form onSubmit={this.handleUpdate}>
            <label className='recipe-field'>Title</label>
            <br />
            <input type='string' value={this.state.title}
              onChange={this.update("title")}
              className='recipe-field'
              />
            <br />

            <label className='recipe-field'>Photo</label>
            <br />
            {this.state.image ?
              ( <img src={this.state.image}/>) :
              ( <button className='new-recipe-photo'
              onClick={this.uploadPhoto}>Upload photo</button> )
            }
            <br />

            <label className='recipe-field'>Ingredients</label>
            <br />
            <textarea rows="10" cols="100" value={this.state.ingredients}
                onChange={this.update("ingredients")}
                className='recipe-field'/>
            <br />
            <label className='recipe-field'>Instructions</label>
            <br />
            <textarea rows="20" cols="100" value={this.state.instructions}
                onChange={this.update("instructions")}
                className='recipe-field'/>

            <div className='button-holder'>
              <input type='submit'
                value="Submit Recipe"
                className="new-recipe-button"/>
            </div>
          </form>

        </div>
      </div>
    );
  }

}

export default withRouter(RecipeEditForm);
