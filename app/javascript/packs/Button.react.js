import React from 'react'
import ReactDOM from 'react-dom';

var buttonStyle = {
  margin: '10px 20px'
};

var Button = React.createClass({
  render: function() {
    return (
      <button
        className="btn btn-default"
        style={buttonStyle}
        onClick={this.props.handleClick}>{this.props.label}</button>
    );
  }
});

module.exports = Button;

Button.defaultProps = { text: "Login" }

ReactDOM.render(
  <Button />,
  document.getElementById('app')
);
