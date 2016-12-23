import React from 'react';

class Calculator extends React.Component {
  constructor() {
    super();
    this.state = { n1: "", n2: "", result: 0 };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
    // your code here
  }

  // your code here

  setNum1(e) {
  // your code here
  const n1 = e.target.value ? parseInt(e.target.value) : "";
   this.setState({ n1 });
  }
  setNum2(e) {
    // your code here
    const n2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ n2 });
  }

  add(e){
    e.preventDefault();
    const result = this.state.n1 + this.state.n2;
    this.setState({ result });
  }
  subtract(e){
    e.preventDefault();
    const result = this.state.n1 - this.state.n2;
    this.setState({ result });
  }
  multiply(e){
    e.preventDefault();
    const result = this.state.n1 * this.state.n2;
    this.setState({ result });
  }
  divide(e){
    e.preventDefault();
    const result = this.state.n1 / this.state.n2;
    this.setState({ result });
  }

  clear(e){
    e.preventDefault();
     this.setState({ n1: "", n2: "", result: 0 });
  }

  render() {
    return (

      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.n1}></input>
        <input onChange={this.setNum2} value={this.state.n2}></input>
        <button onClick={this.clear}>Clear</button>
        <br />
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
