import React from 'react';
import {withRouter} from 'react-router';

class VegForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      image: "",
      ingredients: "",
      instructions: "",
      author_id: this.props.currentUser()
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.uploadPhoto = this.uploadPhoto.bind(this);
  }


  update(property){
      return e => this.setState({[property]: e.target.value});
  }

  handleSubmit(e){
    e.preventDefault();
    const recipe = Object.assign({}, this.state);
    this.props.createRecipe({recipe});
  }

  updateCheckbox(month){
    return e => this.setState({[month]: e.target.checked});
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
    console.log(this.props);
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
      <div className="new-veg-container">
        <div className="new-veg-form">
          <h3 className="new-veg-title">Submit a New Recipe</h3>

          {this.props.errors ? this.renderErrors(): ""}

          <form onSubmit={this.handleSubmit}>
            <label className='veg-field'>Name</label>
            <br />
            <input type='string' value={this.state.name}
              onChange={this.update("name")}
              className='veg-field'
              />
            <br />

            <label className='veg-field'>Photo</label>
            <br />
            {this.state.image ?
              ( <img src={this.state.image}/>) :
              ( <button className='new-veg-photo'
              onClick={this.uploadPhoto}>Upload photo</button> )
            }
            <br />

            <label className='veg-field'>Description</label>
            <br />
            <textarea rows="10" cols="70" value={this.state.description}
                onChange={this.update("description")}
                className='veg-field'/>

            <div>
              <label className='veg-field'>In Season?</label>
              <br />
              { Months.map( (month) => (
                <label key={month}>
                  {month}
                  <input type='checkbox' value={this.state[month]}
                    onChange={this.updateCheckbox(month)}
                    className='veg-field'
                    checked={this.state[month]}/>
                  <br />
                </label>
              ))}
            </div>


            <div className='button-holder'>
              <input type='submit'
                value="Submit Veg"
                className="new-veg-button"/>
            </div>
          </form>

        </div>
      </div>
    );
  }

}

export default withRouter(VegForm);
