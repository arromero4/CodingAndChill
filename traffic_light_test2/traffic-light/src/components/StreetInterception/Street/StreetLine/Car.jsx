import React from 'react'

const Car = ({ car, direction, activatedLight, }) => {
  return (
    <>
     {activatedLight !== 'red' ? (
        <img
          src={car}
          alt="car"
          style={
            direction === 'right'
              ? { ...styles.car, ...styles.carLeftToRight }
              : { ...styles.car, ...styles.carRightToLeft }
          }
        ></img>
      ) : null}
    </>
  )
}

const styles = {
    car: {
      minHeight: '200px',
      minWidth: '200px',
      margin: '0 100px',
      position: 'relative',
      animationDuration: '8s',
      animationIterationCount: 'infinite',
      animationTimingFunction: 'ease-in'
    },
    carLeftToRight: {
      animationName: 'carLeftToRight'
    },
    carRightToLeft: {
      animationName: 'carRightToLeft'
    }
  };

export default Car