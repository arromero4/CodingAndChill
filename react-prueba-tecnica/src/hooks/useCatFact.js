import { useEffect, useState } from "react";
import { getRandomFact } from "../services/facts";

export const useCatFact =() => {
    const [fact, setFact] = useState("");
  
    const refreshFact = () =>{
      getRandomFact().then(newFact => setFact(newFact))
    }
      //un efecto para recuperar la cita al cargar la pagina
      useEffect(() => refreshFact, []);
    
    return {
      fact, refreshFact
    };
  }