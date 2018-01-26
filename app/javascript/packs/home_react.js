// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class ConferencesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      theEastTeams: ["/images/cle_bron.jpg", "mil_g.jpg"],
      theWestTeams: ["/images/sas_kawhi.jpg", "gsw_draymond.jpg"]
    }
  }
  eastTeams() {
    return this.state.theEastTeams[Math.floor(Math.random()*this.state.theEastTeams.length)]
  }
  westTeams() {
    return this.state.theWestTeams
  }
  render () {
    return (
      <div className={this.eastTeams()}>
        <h1>{this.eastTeams()}</h1>
      </div>
    )
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ConferencesContainer />,
    document.body.appendChild(document.createElement('div')),
  )
})
