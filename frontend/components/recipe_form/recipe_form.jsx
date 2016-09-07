import React from 'react';
import {withRouter} from 'react-router';

class RecipeForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      image: "",
      ingredients: "",
      instructions: "",
      author_id: props.currentUser.id,
      vegetables: []
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.uploadPhoto = this.uploadPhoto.bind(this);
    this.updateCheckbox = this.updateCheckbox.bind(this);
  }

  componentDidMount(){
    if (this.props.vegetable == {}) {
      this.props.fetchVegetables();
    }
  }

  update(property){
      return e => this.setState({[property]: e.target.value});
  }


  handleSubmit(e){
    e.preventDefault();
    const recipe = Object.assign({}, this.state);
    this.props.createRecipe({recipe});
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

  updateCheckbox(vegId){
    const vegetable = this.props.vegetables[vegId].name;
    return () => {
      var vegetables = this.state.vegetables;
      vegetables.push(vegetable);
      this.setState({vegetables: vegetables});
    };
  }

  render(){
    return(
      <div className="new-form-container">
        <div className="new-form">
          <h3 className="new-form-title">Submit a New Recipe</h3>

          {this.props.errors ? this.renderErrors(): ""}

          <form onSubmit={this.handleSubmit}>
            <label className='form-field-title'>Title</label>
            <br />
            <input type='string' value={this.state.title}
              onChange={this.update("title")}
              className='form-field'
              />
            <br />

            <label className='form-field-title'>Photo</label>
            <br />
            {this.state.image ?
              ( <img src={this.state.image}/>) :
              ( <button className='new-form-photo'
              onClick={this.uploadPhoto}>Upload photo</button> )
            }
            <br />

            <label className='form-field-title'>Ingredients</label>
            <br />
            <textarea rows="10" cols="100" value={this.state.ingredients}
                onChange={this.update("ingredients")}
                className='form-field'/>
            <br />
            <label className='form-field-title'>
              Which vegetables do you want to add this recipe to?</label>
            <br />
            {Object.keys(this.props.vegetables).map(
              (vegId) => {
                const vegName = this.props.vegetables[vegId].name;

                return (
                  <label key={vegId}>
                    {vegName.toLowerCase()}
                    <input type="checkbox"
                      value={vegName}
                      onChange={this.updateCheckbox(vegId)}
                      className="form-field-checkbox"
                      checked={this.state.vegetables.includes(vegName)}/>
                  </label>
                );
              }
            )}
            <br />
            <label className='form-field-title'>Instructions</label>
            <br />
            <textarea rows="20" cols="100" value={this.state.instructions}
                onChange={this.update("instructions")}
                className='form-field'/>
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

export default withRouter(RecipeForm);
