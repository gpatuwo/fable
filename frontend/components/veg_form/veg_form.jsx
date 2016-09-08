import React from 'react';
import {withRouter} from 'react-router';

const Months = [
  "jan",
  "feb",
  "mar",
  "apr",
  "may",
  "jun",
  "jul",
  "aug",
  "sep",
  "oct",
  "nov",
  "dec",
];

class VegForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      description: "",
      image: ""
    };
    Months.forEach( (month)=> {this.state[month] = false;});

    this.handleSubmit = this.handleSubmit.bind(this);
    this.uploadPhoto = this.uploadPhoto.bind(this);
  }


  update(property){
      return e => this.setState({[property]: e.target.value});
  }

  handleSubmit(e){
    e.preventDefault();
    const vegetable = Object.assign({}, this.state);
    this.props.createVegetable({vegetable});
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
      <div className="new-form-container">
        <div className="new-form">
          <h3 className="new-form-title">Submit a New Vegetable</h3>

          {this.props.errors ? this.renderErrors(): ""}

          <form onSubmit={this.handleSubmit}>
            <label className='form-field-title'>Name</label>
            <br />
            <input type='string' value={this.state.name}
              onChange={this.update("name")}
              className='form-field'
              />
            <br />

            <label className='form-field'>Photo</label>
            <br />
            {this.state.image ?
              ( <img src={this.state.image}/>) :
              ( <button className='new-form-photo'
              onClick={this.uploadPhoto}>Upload photo</button> )
            }
            <br />

            <label className='form-field'>Description</label>
            <br />
            <textarea rows="10" cols="70" value={this.state.description}
                onChange={this.update("description")}
                className='form-field'/>

            <div>
              <label className='form-field'>In Season?</label>
              <br />
              { Months.map( (month) => (
                <label key={month}>
                  {month}
                  <input type='checkbox' value={this.state[month]}
                    onChange={this.updateCheckbox(month)}
                    className='form-field'
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
