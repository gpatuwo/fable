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

    };
    Months.forEach( (month)=> {this.state[month] = false;});

    this.handleSubmit = this.handleSubmit.bind(this);
  }


  update(property){
      return e => this.setState({[property]: e.target.value});
  }

  handleSubmit(e){
    e.preventDefault();
    const vegetable = Object.assign({}, this.state);
    this.props.createVegetable({vegetable});
  }

  render(){
    return(
      <div className="new-veg-container">
        <div className="new-veg-form">
          <h3 className="new-veg-title">Submit a new veg!</h3>

        <form onSubmit={this.handleSubmit}>
          <label className='veg-field'>Name</label>
          <input type='string' value={this.state.name}
            onChange={this.update("name")}
            className='veg-field'/>

          <label className='veg-field'>Description</label>
          <input type='text' value={this.state.description}
              onChange={this.update("description")}
              className='veg-field'/>

          <div>
            <label className='veg-field'>In Season?</label>
            { Months.map( (month) => (
              <label>
                {month}
                <input type='checkbox' value={this.state[month]}
                  onChange={this.update(month)}
                  className='veg-field'/>
              </label>

            ))}
          </div>


          <div className='button-holder'>
            <input type='submit' value="Submit Veg" className="new-veg-button"/>
          </div>
        </form>
        </div>
      </div>
    );
  }

}

export default withRouter(VegForm);
