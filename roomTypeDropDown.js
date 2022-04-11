// import React from 'react';
// import Select from 'react-select';

// const CustomOption = ({ innerProps, isDisabled }) =>
//   !isDisabled ? (
//     <div {...innerProps}>{/* your component internals */}</div>
//   ) : null;

// export class Room extends React.Component {
//     render() {
//       //return <h2>Hi, I am a Room!</h2>;
//       return <Select components={{ Option: CustomOption }} />;
//     }
// }


import React from "react";

import Select from "react-select";

const icecreams = [
    { value: 'bed1', label: '1-bed' },
    { value: 'bed2', label: '2-bed' },
    { value: 'bed3', label: '1-bed Suite' },
    { value: 'bed4', label: '2-bed Suite' },
  ];

  const colourStyles = {
    control: styles => ({ ...styles, backgroundColor: 'white' }),
    option: (styles, { data, isDisabled, isFocused, isSelected }) => {
      return {
        ...styles,
        backgroundColor: isDisabled
          ? null
          : isSelected
          ? data.color
          : isFocused
          ? 'red'
          : null,
        color: isDisabled
          ? '#ccc'
          : isSelected
          ? 'white'
            ? 'white'
            : 'black'
          : data.color,
        cursor: isDisabled ? 'not-allowed' : 'default',
  
        ':active': {
          ...styles[':active'],
          backgroundColor:
            !isDisabled && (isSelected ? data.color : 'green'),
        },
      };
    }
};  

export class RoomTypeDropDown extends React.Component {
  state = {
    selectedOption: null,
  };
  handleChange = (selectedOption) => {
    this.setState({ selectedOption });
    console.log(`Option selected:`, selectedOption);
  };

  render() {
    const { selectedOption } = this.state;

    return (
      <div className="container">
        <div className="row">
          <div className="col-md-12">

            <h5>Select rooms type:</h5>
            <Select
              value={selectedOption}
              onChange={this.handleChange}
              options={icecreams}
            />

          </div>
        </div>
        {/* <div className="row">
          <div className="col-md-12">

            <h5>Multiple SelectBox</h5>
            <Select
              value={selectedOption}
              isMulti="true"
              onChange={this.handleChange}
              options={icecreams}
              styles={colourStyles}
            />

          </div>
        </div> */}
        {/* <div className="row">
          <div className="col-md-12">

            <h5>Multiple SelectBox with Search</h5>
            <Select
              value={selectedOption}
              isMulti="true"
              isSearchable="true"
              onChange={this.handleChange}
              options={icecreams}
            />

          </div> */}
        {/* </div> */}
      </div>
    );
  }
 
}


// export default Room;

