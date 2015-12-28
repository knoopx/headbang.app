React = require("react")

module.exports = React.createClass
  displayName: "Column"

  getDefaultProps: ->
    display: "flex"
    flex: 1

  getStyle: ->
    display: @props.display
    flex: @props.flex
    flexDirection: "column"
    flexWrap: "wrap"
    overflow: @props.overflow
    textOverflow: "ellipsis"
    whiteSpace: "nowrap"
    padding: @props.padding
    alignItems: @props.alignItems
    alignSelf: @props.alignSelf
    minWidth: 0

  render: ->
    <div className="column" {...@props} style={Object.merge(@getStyle(), @props.style)}/>