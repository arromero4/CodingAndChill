import React from "react";
import Car from "./Car";

const StreetLine = ({ direction, cars, activatedLight }) => {
  return (
    <>
      <div style={styles.container}>
        {cars?.map((car, index) => (
          <Car
            car={car}
            key={index}
            direction={direction}
            activatedLight={activatedLight}
          />
        ))}
      </div>
    </>
  );
};

const styles = {
    container: {
      display: 'flex'
    }
  };

export default StreetLine;
