import React from "react";
import Select from "react-select";

const icecreams = [
    { value: 'person1', label: '1' },
    { value: 'person2', label: '2' },
    { value: 'person3', label: '3' },
    { value: 'person4', label: '4' },
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

export class PersonCountDropDown extends React.Component {
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
            <h5>Select person count:</h5>
            <Select
              value={selectedOption}
              onChange={this.handleChange}
              options={icecreams}
            />
          </div>
        </div>
      </div>
    );
  }
}


