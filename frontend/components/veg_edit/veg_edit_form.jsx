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

class VegEditForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = props.vegetable;
    this.handleUpdate = this.handleUpdate.bind(this);
    this.uploadPhoto = this.uploadPhoto.bind(this);
  }


  update(property){
      return e => this.setState({[property]: e.target.value});
  }

  handleUpdate(e){
    e.preventDefault();
    const vegetable = Object.assign({}, this.state);
    const vegId = this.state.id;
    this.props.updateVegetable(vegId, {vegetable});
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
      <div className="new-form-container">
        <div className="new-form">
          <h2 className="new-form-title">Edit This Vegetable</h2>

          {this.props.errors ? this.renderErrors(): ""}

          <form onSubmit={this.handleUpdate}>
            <label className='form-field-title'>Name</label>
            <br />
            <input type='string' value={this.state.name}
              onChange={this.update("name")}
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

            <label className='form-field-title'>Description</label>
            <br />
            <textarea rows="10" cols="70" value={this.state.description}
                onChange={this.update("description")}
                className='form-field'/>

            <div>
              <label className='form-field-title'>In Season?</label>
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

export default withRouter(VegEditForm);
