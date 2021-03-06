// Run this example by adding <%= javascript_pack_tag 'welcome_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

function Button() {
  return (
    React.createElement("button", null, "Login")
  );
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Button />,
    document.body.appendChild(document.createElement('div')),
  )
})
