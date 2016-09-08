import React from 'react';
import RecipeIndexContainer from "../recipe_index/recipe_index_container.js";

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
        <img className={this.renderClass(veg.id)}
          src={veg.image}/>
        <div className="veg-item-name-box">
          <h4 className="veg-item-name">
            {veg.name.toLowerCase()}</h4>
        </div>
      </li>
    );
  }

  renderClass(vegId){
    if (this.state.selectedVegIds.includes(vegId)) {
      return "veg-item-photo overlay";
    } else {
      return "veg-item-photo";
    }
  }


  render(){
    const vegetables = this.props.vegetables;
    const selectedVegIds = this.state.selectedVegIds;
    return (
      <section className="homepage">
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

        <section className="veg-selection-wrapper">
          <ul className="veg-selection">
            <h4 className="veg-selection-head">Section:</h4>
            {selectedVegIds.map(
              (vegId) => {

                const vegetable = vegetables[vegId];
                return ( <li key={vegId}>{vegetable.name.toLowerCase()}</li>);
              }
            )}
          </ul>
        </section>

        <RecipeIndexContainer/>

      </section>
    );
  }
}



export default VegIndexFiltered;
