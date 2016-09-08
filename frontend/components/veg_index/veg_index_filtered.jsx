import React from 'react';
import VegIndexItem from './veg_index_item.jsx';

class VegIndexFiltered extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedVegIds: []
    };

    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount(){
    if (this.props.vegetable == {}) {
      this.props.fetchVegetables();
    }
  }

  handleClick(vegId) {
    
    const vegArr = this.state.selectedVegIds.concat([vegId]);
    this.setState({selectedVegIds: vegArr}, () => {
      this.props.queryRecipes(this.state.selectedVegIds);
    });
  }

  renderVegItem(veg) {
    return (
      <li className="veg-index-item"
        onClick={this.handleClick.bind(this, veg.id)}
        key={veg.id}>
        <img className="veg-item-photo"
          src={veg.image}/>
        <div className="veg-item-name-box">
          <h4 className="veg-item-name">
            {veg.name && veg.name.toLowerCase()}</h4>
        </div>
      </li>
    );
  }

  render(){
    const vegetables = this.props.vegetables;
    return (
      <section className="veg-fluid-grid">
        <ul className="veg-index-grid">
          {vegetables && Object.keys(vegetables).map(
            (vegObjectId) => {
              const month = Date().split(" ")[1].toLowerCase();
              const veg = vegetables[vegObjectId];
              if (veg[month] === true) {
                return (this.renderVegItem(veg));
              }
            })
          }
        </ul>
      </section>
    );
  }
}



export default VegIndexFiltered;
