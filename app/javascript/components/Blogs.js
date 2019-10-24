import React from "react"
import PropTypes from "prop-types"

class Blogs extends React.Component {
  render () {
    return (
      <React.Fragment>
        Blogs: {this.props.blogs}
      </React.Fragment>
    );
  }
}

Blogs.propTypes = {
  blogs: PropTypes.array
};
export default Blogs
